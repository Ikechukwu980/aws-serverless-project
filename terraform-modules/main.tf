# creating an s3 bucket
module "s3_static_website" {
  source         = "./s3-bucket"
  bucket_name    = var.bucket_name
  index_document = var.index_document
  error_document = var.error_document
  tags           = var.tags
}

output "s3_bucket_name" {
  value = module.s3_static_website.bucket_name
}

output "s3_website_url" {
  value = module.s3_static_website.website_url
}
