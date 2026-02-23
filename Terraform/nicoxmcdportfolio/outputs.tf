output "route53_zone_id" {
  value = aws_route53_zone.main.zone_id
}

output "route53_zone_name_servers" {
  value = aws_route53_zone.main.name_servers
}

output "cloudfront_domain" {
  value = aws_cloudfront_distribution.cdn.domain_name
}
