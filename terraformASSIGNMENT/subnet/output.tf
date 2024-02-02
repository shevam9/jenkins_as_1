output "public_subnet_output" {
    
    value = aws_subnet.public_subnet[*].id
    description = "this is the output for my public subnet"
}

output "private_subnet_output" {
    value = aws_subnet.private_subnet[*].id
    description = "this is the output for my private subnet"
}