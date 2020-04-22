resource "aws_internet_gateway" "a" {
  vpc_id = aws_vpc.a.id
  tags = {
    network = "a"
  }
}
