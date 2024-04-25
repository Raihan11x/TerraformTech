resource "aws_route53_record" "cert_validation" {
  name    = aws_acm_certificate.app.domain_validation_options.0.resource_record_name
  type    = aws_acm_certificate.app.domain_validation_options.0.resource_record_type
  zone_id = var.route53_hosted_zone_id
  records = [aws_acm_certificate.app.domain_validation_options.0.resource_record_value]
  ttl     = 60
}

resource "aws_acm_certificate_validation" "cert" {
  certificate_arn         = aws_acm_certificate.cert.arn
  validation_record_fqdns = [aws_route53_record.cert_validation.fqdn]
}

resource "aws_route53_record" "app" {
  zone_id = var.route53_hosted_zone_id
  name    = var.route53_record_name
  type    = "A"
}