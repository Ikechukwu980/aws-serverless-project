output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.static_website.bucket
}

output "website_url" {
  description = "The website URL of the S3 bucket"
  value       = aws_s3_bucket.static_website.website_endpoint
}
