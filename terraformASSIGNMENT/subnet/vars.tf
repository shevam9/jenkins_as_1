variable "pub_subnet" {
  default = ["192.168.240.0/22", "192.168.244.0/22"]
  #default = ["10.0.0.0/18", "10.0.64.0/18"]
  type = list(string)
  description = "this is variable of vpc"
}

variable "tag_public" {
  default =  ["ninja-pub-sub-01","ninja-pub-sub-02"]
  type = list(string)
}

variable "pri_subnet" {
  default = ["192.168.248.0/22","192.168.252.0/22"]
  #default = ["10.0.128.0/19","10.0.192.0/21"]
 # default = ["10.0.128.0/18","10.0.192.0/18"]
  type = list(string)
  description = "here i am giving cidr for private subnet"
}

variable "tag_private" {
    type = list(string)
    default = [ "ninja-priv-sub-01","ninja-priv-sub-02" ]
}

variable "vpc_2" {
    type = string
    default = "xyz"
    description = "this is my subnet vpc id"
}
