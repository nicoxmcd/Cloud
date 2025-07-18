resource "aws_route53_record" "cert_validation" {
  allow_overwrite = true
  name    = tolist(aws_acm_certificate.cert.domain_validation_options)[0].resource_record_name
  type    = tolist(aws_acm_certificate.cert.domain_validation_options)[0].resource_record_type
  records = [tolist(aws_acm_certificate.cert.domain_validation_options)[0].resource_record_value]
  zone_id = aws_route53_zone.main.zone_id
  ttl     = 300
}

resource "aws_route53_record" "cert_validation_www" {
  allow_overwrite = true
  name            = tolist(aws_acm_certificate.cert.domain_validation_options)[1].resource_record_name
  type            = tolist(aws_acm_certificate.cert.domain_validation_options)[1].resource_record_type
  records         = [tolist(aws_acm_certificate.cert.domain_validation_options)[1].resource_record_value]
  zone_id         = aws_route53_zone.main.zone_id
  ttl             = 300
}

resource "aws_acm_certificate_validation" "cert_validation" {
  certificate_arn         = aws_acm_certificate.cert.arn
  validation_record_fqdns = [
    aws_route53_record.cert_validation.fqdn,
    aws_route53_record.cert_validation_www.fqdn
  ]
}
