resource "aws_subnet" "a_a" {
  vpc_id     = aws_vpc.a.id
  cidr_block = "10.0.0.0/24"
  tags = {
    network = "a"
    subnet  = "a"
  }
}

resource "aws_route_table" "a_a" {
  vpc_id = aws_vpc.a.id
  tags = {
    network = "a"
    subnet  = "a"
  }
}

resource "aws_route_table_association" "a_a" {
  subnet_id      = aws_subnet.a_a.id
  route_table_id = aws_route_table.a_a.id
}
