resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnet_az1[0].id
  tags = {
    Name = "nat_gateway"
  }
}

resource "aws_eip" "nat_eip" {
  vpc = true
}