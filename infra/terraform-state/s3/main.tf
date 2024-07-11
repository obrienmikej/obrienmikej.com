module "s3_bucket" {
  source  = "../../terraform-modules/s3"
  buckets = var.buckets
}
