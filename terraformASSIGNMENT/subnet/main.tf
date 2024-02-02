resource "aws_subnet" "public_subnet" {
  vpc_id     = var.vpc_2
  count = length(var.pub_subnet)
  cidr_block = var.pub_subnet[count.index]

  tags = {
    Name = var.tag_public[count.index]
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id = var.vpc_2
  count = length(var.pri_subnet)
  cidr_block = var.pri_subnet[count.index]

  tags = {
    Name = var.tag_private[count.index]
  }
}

