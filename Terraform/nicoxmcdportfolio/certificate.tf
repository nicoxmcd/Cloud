resource "aws_acm_certificate" "cert" {
  provider          = aws.us_east_1
  domain_name       = "www.${var.domain_name}"
  validation_method = "DNS"

  tags = {
    Project = var.domain_name
  }

  lifecycle {
    create_before_destroy = true
  }
}