output "vpc_output" {
   value = aws_vpc.first_vpc.id
   description = "this is output for VPC"
}