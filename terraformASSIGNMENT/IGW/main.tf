resource "aws_internet_gateway" "IGW" {
  vpc_id = var.vpc_2

  tags = {
    Name = var.internet_gateway
  }
}