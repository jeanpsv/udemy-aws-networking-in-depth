resource "aws_instance" "vm1" {
  ami           = data.aws_ami.amazon-linux.id
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.a_a.id
}
