resource "aws_vpc" "a" {
  cidr_block = "10.0.0.0/16"
  tags = {
    name = "network-a"
  }
}

resource "aws_route_table" "a" {
  vpc_id = aws_vpc.a.id
  tags = {
    name = "network-a"
  }
}

resource "aws_main_route_table_association" "a" {
  vpc_id         = aws_vpc.a.id
  route_table_id = aws_route_table.a.id
}
