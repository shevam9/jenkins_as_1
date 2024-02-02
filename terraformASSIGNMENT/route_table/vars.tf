
variable "public_route_tag" {
  type = string
  default = "xyz"
  description = "this block is for public route tag"
}


variable "route_vpc" {
  type = string
  default = "xyz"
  description = "this block is for route vpc " 
}

variable "public_route_cidr_block" {
  type = string
  default = "0.0.0.0/0"
  description = "this block is for public route cidr "
}

variable "public_route_IGW" {
  type = string
  description = "this block is for public route IGW "
}

variable "route_public_subnet" {
  type = list(string)
  default = [ "xyz", "zyx" ]
  description = "thisz block is for route public_subnet " 
}

variable "route_count_subnet_public" {
  type = list(string)
  default = [ "xyz","zyx" ]
  description = "this block is for route public_subnet " 
}

variable "private_route_cidr_block" {
  type = string
  default = "0.0.0.0/0"
  description = "this block is for private route cidr "
}

variable "private_route_tag" {
  type = string
  default = "ninja-route-priv"
  description = "this block is for private route tag"
}

variable "private_route_NAT_gateway" {
  type = string
  description = "this block is for private route NAT gateway "
}

variable "route_private_subnet" {
  type = list(string)
  default = [ "xyz", "zyx" ]
  description = "thisz block is for route private subnet " 
}

variable "route_count_subnet_private" {
  type = list(string)
  default = [ "xyz","zyx" ]
  description = "this block is for route private subnet" 
}