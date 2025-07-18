resource "aws_acm_certificate" "cert" {
  domain_name       = "${var.domain_name}"
  subject_alternative_names = ["www.${var.domain_name}"]
  validation_method = "DNS"

  tags = {
    Project = var.domain_name
  }

  lifecycle {
    create_before_destroy = true
  }
}