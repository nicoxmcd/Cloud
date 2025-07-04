resource "aws_s3_bucket_lifecycle_configuration" "versioning_lifecycle" {
  bucket = aws_s3_bucket.portfolio.id
  
  rule {
    id     = "expire-noncurrent-versions"
    status = "Enabled"

    filter {}

    noncurrent_version_expiration {
      noncurrent_days = 30
    }
  }
}
