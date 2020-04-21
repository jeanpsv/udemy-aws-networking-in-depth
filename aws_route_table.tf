resource "aws_route_table" "a" {
  vpc_id = aws_vpc.a.id
  tags = {
    network = "a"
  }
}

resource "aws_route_table" "a_a" {
  vpc_id = aws_vpc.a.id
  tags = {
    network = "a"
    subnet  = "a"
  }
}
