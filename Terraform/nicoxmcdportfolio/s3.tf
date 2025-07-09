resource "aws_s3_bucket" "portfolio" {
  bucket = "${var.bucket_name}"

  tags = {
    Project = var.domain_name
  }
}


resource "aws_s3_bucket_website_configuration" "website_config" {
  bucket = aws_s3_bucket.portfolio.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "404.html"
  }
}