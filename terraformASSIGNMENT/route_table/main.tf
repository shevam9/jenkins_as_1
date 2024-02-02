
resource "aws_route_table" "public_route_table" {
  vpc_id = var.route_vpc

  
  route {
    cidr_block = var.public_route_cidr_block
    gateway_id = var.public_route_IGW
  }

  tags = {
    Name = var.public_route_tag
  }
}

resource "aws_route_table_association" "public_rt" {
    count = length(var.route_count_subnet_public)
  subnet_id      = var.route_public_subnet[count.index]
  route_table_id = aws_route_table.public_route_table.id
}

#===============private route table =============


resource "aws_route_table" "private_route_table" {
  vpc_id = var.route_vpc

  
  route {
    cidr_block = var.private_route_cidr_block
    gateway_id = var.private_route_NAT_gateway
  }

  tags = {
    Name = var.private_route_tag
  }
}

resource "aws_route_table_association" "private_rt" {
    count = length(var.route_count_subnet_private)
  subnet_id      = var.route_private_subnet[count.index]
  route_table_id = aws_route_table.private_route_table.id
}


