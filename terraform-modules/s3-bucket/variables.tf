# variables.tf

variable "bucket_name" {
  description = "The name of the S3 bucket for static website hosting"
  type        = string
}

variable "index_document" {
  description = "The index document for the S3 bucket hosting"
  type        = string
  default     = "index.html"  # Optional default value
}

variable "error_document" {
  description = "The error document for the S3 bucket hosting"
  type        = string
  default     = "error.html"  # Optional default value
}

variable "tags" {
  description = "Tags for the S3 bucket"
  type        = map(string)
  default     = {
    Name        = "StaticWebsiteBucket"
    Environment = "Production"
  }
}
