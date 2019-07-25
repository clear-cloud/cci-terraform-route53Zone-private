resource "aws_route53_zone" "vpc_private_zone" {
  name = "${var.dns_domain}"

  vpc {
    vpc_id = "${var.vpc_id}"
  }

  tags {
    Name          = "${var.dns_domain}.${var.environment}.PrivateZone"
    Environment   = "${var.environment}"
    Description   = "PrivateZone"
    Contact       = "${var.vpc_contact}"
    Orchestration = "${var.orchestration}"
  }
}
