resource "aws_s3_bucket" "this" {
  for_each = { for bucket in var.buckets : bucket.name => bucket }

  bucket = each.value.name

  lifecycle {
    prevent_destroy = each.value.prevent_destroy
  }

  tags = each.value.tags
}

resource "aws_s3_bucket_lifecycle_configuration" "this" {
  for_each = { for bucket in var.buckets : bucket.name => bucket }

  bucket = aws_s3_bucket.this[each.key].id

  dynamic "rule" {
    for_each = each.value.lifecycle_rules
    content {
      id     = rule.value.id
      status = rule.value.status

      expiration {
        days = rule.value.expiration_days
      }

      transition {
        days          = rule.value.transition_days
        storage_class = rule.value.transition_storage_class
      }
    }
  }
}
