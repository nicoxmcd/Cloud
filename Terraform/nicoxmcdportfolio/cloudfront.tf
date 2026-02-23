resource "aws_cloudfront_origin_access_control" "oac" {
  name                              = "${replace(var.domain_name, ".", "-")}-oac"
  description                       = "OAC for ${var.domain_name} redirect origin"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

resource "aws_cloudfront_function" "redirect" {
  name    = "${replace(var.domain_name, ".", "-")}-redirect"
  runtime = "cloudfront-js-2.0"
  publish = true

  code = <<-EOT
    function handler(event) {
      return {
        statusCode: 301,
        statusDescription: "Moved Permanently",
        headers: {
          location: { value: "https://${var.redirect_target}" + event.request.uri }
        }
      };
    }
  EOT
}

resource "aws_cloudfront_distribution" "cdn" {
  origin {
    domain_name              = aws_s3_bucket.redirect_origin.bucket_regional_domain_name
    origin_id                = "S3-redirect-origin"
    origin_access_control_id = aws_cloudfront_origin_access_control.oac.id
  }

  enabled         = true
  is_ipv6_enabled = true
  comment         = "Redirect ${var.domain_name} to ${var.redirect_target}"

  aliases = [var.domain_name, "www.${var.domain_name}"]

  default_cache_behavior {
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = "S3-redirect-origin"
    viewer_protocol_policy = "allow-all"

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }

    function_association {
      event_type   = "viewer-request"
      function_arn = aws_cloudfront_function.redirect.arn
    }

    min_ttl     = 0
    default_ttl = 0
    max_ttl     = 0
  }

  price_class = "PriceClass_100"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn      = aws_acm_certificate_validation.cert_validation.certificate_arn
    ssl_support_method       = "sni-only"
    minimum_protocol_version = "TLSv1.2_2021"
  }

  tags = {
    Project = var.domain_name
  }
}
