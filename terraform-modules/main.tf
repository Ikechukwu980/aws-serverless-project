# creating an s3 bucket
module "s3_static_website" {
  source    = "./s3-bucket"
  bucket_name    = var.bucket_name
  index_document = var.index_document
  website_files_path = var.website_files_path
  tags           = var.tags
}


