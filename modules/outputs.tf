output "public_subnet" {
    value = aws_subnet.public_subnet_az1
}
output "private_subnet" {
    value = aws_subnet.private_subnet_az1
}
output "vpc_id" {
    value = aws_vpc.vpc1.id
}
output "vpc_cider" {
    value = aws_vpc.vpc1.cidr_block
}
