variable "buckets" {
  description = "A list of maps containing bucket configurations"
  type = list(object({
    name = string
    tags = map(string)
  }))
}

variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-west-1"
}