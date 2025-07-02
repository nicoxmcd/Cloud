resource "aws_s3_bucket_lifecycle_configuration" "versioning_lifecycle" {
  bucket = aws_s3_bucket.portfolio.id

  rule {
    id     = "expire-noncurrent-versions"
    status = "Enabled"

    noncurrent_version_expiration {
      noncurrent_days = 30
    }

    # Optional: clean up expired delete markers
    abort_incomplete_multipart_upload {
      days_after_initiation = 7
    }
  }
}
