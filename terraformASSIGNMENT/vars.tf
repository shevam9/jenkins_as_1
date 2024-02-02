variable "region" {
  default = "ap-south-1"
  type = string
  description = "region for vpc"
}

variable "root_vap_tag" {
  default = "var,tf_file_tag"
  type = string
  description = "this is tag for vpc from var,tf file"
}

variable "root_vpc" {
  type = string
  default = "10.0.0.0/16"
  description = "this is vpc cidr form root var.tf file"
}

variable "root_public_route_cidr_block" {
  type = string
  default = "0.0.0.0/0"
  description = "this is public route cidr block from root var.tf file"
}

variable "root_public_route_tag" {
  type = string
  default = "ninja-route-pub"
  description = "this is public route tag block from root var.tf file"
}

variable "root_private_route_cidr_block" {
  type = string
  default = "0.0.0.0/0"
  description = "this is private route cidr block from root var.tf file"
}

variable "root_private_route_tag" {
  type = string
  default = "ninja-route-priv"
  description = "this is private route tag block from root var.tf file"
}