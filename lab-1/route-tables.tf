resource "aws_route_table" "public_route_table_az1" {
  vpc_id = aws_vpc.vpc1.id
  tags = {
    Name = "public_route_table_az1"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "public_subnet_az1_association" {
  subnet_id      = aws_subnet.public_subnet_az1[0].id
  route_table_id = aws_route_table.public_route_table_az1.id
}

resource "aws_route_table" "private_route_table_az1" {
  vpc_id = aws_vpc.vpc1.id
  tags = {
    Name = "private_route_table_az1"
  }

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gateway.id
  }
}

resource "aws_route_table_association" "private_subnet_az1_association" {
  subnet_id      = aws_subnet.private_subnet_az1[0].id
  route_table_id = aws_route_table.private_route_table_az1.id
}