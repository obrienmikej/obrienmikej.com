output "bucket_ids" {
  description = "The IDs of the S3 buckets"
  value       = { for bucket in aws_s3_bucket.this : bucket.bucket => bucket.id }
}

output "bucket_arns" {
  description = "The ARNs of the S3 buckets"
  value       = { for bucket in aws_s3_bucket.this : bucket.bucket => bucket.arn }
}
