resource "aws_network_acl" "a_main" {
  vpc_id = aws_vpc.a.id

  ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = aws_vpc.a.cidr_block
    from_port  = 80
    to_port    = 80
  }

  egress {
    protocol   = "tcp"
    rule_no    = 200
    action     = "allow"
    cidr_block = aws_vpc.a.cidr_block
    from_port  = 443
    to_port    = 443
  }

  tags = {
    network = "a"
  }
}
