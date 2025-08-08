resource "aws_route53_zone" "main" {
  name = var.domain_name

  tags = {
    Project = var.domain_name
  }
}

# Alias using DNS records pointing to CloudFront not directly to S3
# Direct www.
resource "aws_route53_record" "www_a" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "www.${var.domain_name}"
  type    = "A"

  alias {
    name    = aws_cloudfront_distribution.cdn.domain_name
    zone_id = aws_cloudfront_distribution.cdn.hosted_zone_id
    evaluate_target_health = false
  }
}

# Redirect apex non www. to www.
resource "aws_route53_record" "apex_redirect" {
  zone_id = aws_route53_zone.main.zone_id
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.cdn.domain_name
    zone_id                = aws_cloudfront_distribution.cdn.hosted_zone_id
    evaluate_target_health = false
  }
}