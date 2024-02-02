variable "elastic_ip" {
  type = string
  default = "vpc"
  description = "this block is for elastic ip for NAT gateway"
}

variable "NAT_gateway_tag" {
  type = string
  default = "ninja-nat-01"
  description = "this block is for NAT gateway's tag."
}

variable "public_subnet_at_NAT_gateway" {
  type = string
  default = "xyz"
  description = "this block is to get public subnet id."
}