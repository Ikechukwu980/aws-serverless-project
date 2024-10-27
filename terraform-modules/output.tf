output "s3_bucket_name" {
  value = module.s3_static_website.bucket_name
}

output "s3_website_url" {
  value = module.s3_static_website.website_url
}