resource "aws_route53_zone" "main" {
  name = var.domain_name

  tags = {
    Project = var.domain_name
  }
}

resource "aws_route53_record" "www_a" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "www.${var.domain_name}"
  type    = "A"

  alias {
    name                   = data.aws_s3_bucket.portfolio_metadata.website_endpoint
    zone_id                = data.aws_s3_bucket.portfolio_metadata.hosted_zone_id
    evaluate_target_health = false
  }
}
