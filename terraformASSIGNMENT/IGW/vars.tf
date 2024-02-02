variable "internet_gateway" {
  type = string
  default = "ninja-igw-01"
  description = "this block for internet-gateway for publicsubnet"
}

variable "vpc_2" {
    type = string
    default = ""
    description = "this is my subnet vpc id"
}