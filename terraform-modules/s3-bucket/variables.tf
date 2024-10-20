# variables.tf

variable "bucket_name" {}

variable "index_document" {}

variable "error_document" {
  description = "The error document for the S3 bucket hosting"
  type        = string
}

variable "tags" {
  description = "Tags for the S3 bucket"
  type        = map(string)
}
