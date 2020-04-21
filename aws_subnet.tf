resource "aws_subnet" "a_a" {
  vpc_id     = aws_vpc.a.id
  cidr_block = "10.0.0.0/24"
  tags = {
    network = "a"
    subnet  = "a"
  }
}
