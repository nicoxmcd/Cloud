resource "aws_s3_bucket" "portfolio" {
  bucket = "nicoxmcdportfolio"

  tags = {
    Project        = "nicoxmcd.com"
  }
}