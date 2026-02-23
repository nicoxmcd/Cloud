resource "aws_s3_bucket" "redirect_origin" {
  bucket = "${replace(var.domain_name, ".", "-")}-redirect-origin"

  tags = {
    Project = var.domain_name
  }
}
