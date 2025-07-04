resource "aws_route53_record" "cert_validation" {
  name    = aws_acm_certificate.cert.domain_validation_options.resource_record_name
  type    = aws_acm_certificate.cert.domain_validation_options.resource_record_type
  zone_id = aws_route53_zone.main.zone_id
  records = [aws_acm_certificate.cert.domain_validation_options.resource_record_value]
  ttl     = 300
}

resource "aws_acm_certificate_validation" "cert_validation" {
  certificate_arn         = aws_acm_certificate.cert.arn
  validation_record_fqdns = [aws_route53_record.cert_validation.fqdn]
}
