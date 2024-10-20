# variables.tf

variable "bucket_name" {
  description = "The name of the S3 bucket for static website hosting"
  type        = string
}

variable "index_document" {
  description = "The index document for the S3 bucket hosting"
  type        = string
}

variable "error_document" {
  description = "The error document for the S3 bucket hosting"
  type        = string
}

variable "tags" {
  description = "Tags for the S3 bucket"
  type        = map(string)
}
