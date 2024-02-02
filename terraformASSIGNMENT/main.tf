module "for_vpc" {
  source = "./vpc"
  vpc_tag = var.root_vap_tag
  my_vpc = var.root_vpc
}

module "for_private_subnet" {
    source = "./subnet"
#    my_vpc = module.for_vpc_id
    vpc_2 = module.for_vpc.vpc_output

}

module "for_public_subnet" {
    source = "./subnet"
#    my_vpc = module.for_vpc_id
    vpc_2 = module.for_vpc.vpc_output

}

module "for_IGW" {
    source = "./IGW"
#    my_vpc = module.for_vpc_id
    vpc_2 = module.for_vpc.vpc_output

}

module "for_NAT_gateway" {
    source = "./NAT"
#    my_vpc = module.for_vpc_id
    public_subnet_at_NAT_gateway = module.for_public_subnet.public_subnet_output[0]

}


#=========== public route table =============



module "for_route" {
    source = "./route_table"

    route_vpc = module.for_vpc.vpc_output
    public_route_cidr_block = var.root_public_route_cidr_block
    public_route_IGW = module.for_IGW.IGW_output
    public_route_tag = var.root_public_route_tag

    route_public_subnet = module.for_public_subnet.public_subnet_output
    route_count_subnet_public = module.for_public_subnet.public_subnet_output
#}
#
#module "for_private_route" {
#    source = "./route_table"
#
#    route_vpc = module.for_vpc.vpc_output
    private_route_cidr_block = var.root_private_route_cidr_block
    private_route_NAT_gateway = module.for_NAT_gateway.NAT_gateway_output
    private_route_tag = var.root_private_route_tag

    route_private_subnet = module.for_private_subnet.private_subnet_output
    route_count_subnet_private = module.for_private_subnet.private_subnet_output
}