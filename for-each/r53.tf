resource "aws_route53_record" "expense" {
  for_each = aws_instance.expense
  zone_id = var.zone_id
  name    = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}"
  #count and count.index will not work in locals
  #name = local.record_name
  type    = "A"
  ttl     = 1
  #count and count.index will not work in locals
  #records = local.record_value
  records = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
  #if records already exists
  allow_overwrite = true
}