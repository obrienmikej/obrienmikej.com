output "bucket_names" {
  description = "The names of the S3 buckets"
  value       = [for bucket in aws_s3_bucket.this : bucket.bucket]
}

output "bucket_arns" {
  description = "The ARNs of the S3 buckets"
  value       = [for bucket in aws_s3_bucket.this : bucket.arn]
}

output "bucket_regions" {
  description = "The regions of the S3 buckets"
  value       = [for bucket in aws_s3_bucket.this : bucket.region]
}
