variable "buckets" {
  description = "List of S3 bucket configurations"
  type = list(object({
    name              = string
    tags              = map(string)
    prevent_destroy   = bool
    lifecycle_rules   = list(object({
      id                      = string
      status                  = string
      expiration_days         = number
      transition_days         = number
      transition_storage_class = string
    }))
  }))
  default = []
}
