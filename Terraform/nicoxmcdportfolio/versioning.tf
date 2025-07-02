resource "aws_s3_bucket_versioning" "enabled" {
  bucket = aws_s3_bucket.portfolio.id

  versioning_configuration {
    status = "Enabled"
  }
}
