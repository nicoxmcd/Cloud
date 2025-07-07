resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.portfolio.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "AllowCloudFrontServiceGetObject",
        Effect = "Allow"
        Principal = {
          AWS = aws_cloudfront_origin_access_identity.oai.iam_arn
        }
        Action = "s3:GetObject"
        Resource = "${aws_s3_bucket.portfolio.arn}/*"
      }
    ]
  })
}

resource "aws_s3_bucket_ownership_controls" "ownership" {
  bucket = aws_s3_bucket.portfolio.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.portfolio.id
  acl    = "private"

  depends_on = [aws_s3_bucket_ownership_controls.ownership]
}
