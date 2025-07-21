resource "aws_s3_bucket" "portfolio" {
  bucket = "${var.bucket_name}"
  tags = {
    Project = var.domain_name
  }
}

resource "aws_s3_bucket_website_configuration" "website_config" {
  bucket = aws_s3_bucket.portfolio.bucket

  index_document {
    suffix = "src/pages/index.astro"
  }

  error_document {
    key = "src/pages/404.astro"
  }
}
