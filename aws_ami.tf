data "aws_ami" "amazon-linux" {
  owners = ["amazon"]
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
  filter {
    name   = "image-id"
    values = ["ami-0323c3dd2da7fb37d"]
  }
}

