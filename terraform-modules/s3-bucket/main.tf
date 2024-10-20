resource "aws_s3_bucket" "static_website" {
  bucket = var.bucket_name

  # Enable website hosting
  website {
    index_document = var.index_document
    error_document = var.error_document
  }

  tags = var.tags
}

resource "aws_s3_bucket_acl" "static_website_acl" {
  bucket = aws_s3_bucket.static_website.id
  acl    = "public-read"
}
