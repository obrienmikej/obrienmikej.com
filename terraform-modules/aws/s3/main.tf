resource "aws_s3_bucket" "this" {
  for_each = { for bucket in var.buckets : bucket.name => bucket }

  bucket = each.value.name

  tags = each.value.tags
}
