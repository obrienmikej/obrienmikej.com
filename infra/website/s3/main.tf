module "s3_buckets" {
  source  = "../../terraform-modules/s3"
  buckets = var.buckets
}
