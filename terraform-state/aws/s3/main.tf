module "s3_buckets" {
  source      = "../../../terraform-modules/aws/s3"
  buckets = var.buckets
  region  = var.region
}
