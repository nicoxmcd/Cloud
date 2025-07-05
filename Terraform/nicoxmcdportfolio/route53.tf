data "aws_route53_zone" "main" {
  name = var.domain_name
  private_zone = false

  tags = {
    Project = var.domain_name
  }
}

# Alias using DNS records pointing to CloudFront not directly to S3
# Direct www.nicoxmcd.com to www.nicoxmcd.com
resource "aws_route53_record" "www_a" {
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "www.${var.domain_name}"
  type    = "A"

  alias {
    name    = aws_cloudfront_distribution.cdn.domain_name
    zone_id = aws_cloudfront_distribution.cdn.hosted_zone_id
    evaluate_target_health = false
  }
}

# Redirect apex (nicoxmcd.com) to www.nicoxmcd.com
resource "aws_route53_record" "apex_redirect" {
  zone_id = data.aws_route53_zone.main.zone_id
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.cdn.domain_name
    zone_id                = aws_cloudfront_distribution.cdn.hosted_zone_id
    evaluate_target_health = false
  }
}