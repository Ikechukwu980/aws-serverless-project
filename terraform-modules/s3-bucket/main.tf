resource "aws_s3_bucket" "static_website" {
  bucket = var.bucket_name
  

  # Enable website hosting
  website {
    index_document = var.index_document
  }

  tags = var.tags
}
resource "aws_s3_bucket_object" "index_html" {
  bucket = aws_s3_bucket.static_website.id
  key    = var.index_document
  source = "${var.website_files_path}/${var.index_document}"
}

