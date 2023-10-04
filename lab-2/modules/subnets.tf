resource "aws_subnet" "public_subnet_az1" {
  count                   = 2
  cidr_block              = var.sub_pub_cidrs[count.index] #"10.0.1.0/24"
  availability_zone       = var.azs[count.index]
  vpc_id                  = aws_vpc.vpc1.id
  map_public_ip_on_launch = true
  tags = {
    Name = "public_subnet_az1"
  }
}

resource "aws_subnet" "private_subnet_az1" {
  count                   = 2
  cidr_block              = var.sub_pri_cidrs[count.index] #"10.0.2.0/24"
  availability_zone       = var.azs[count.index]
  vpc_id                  = aws_vpc.vpc1.id
  map_public_ip_on_launch = false
  tags = {
    Name = "private_subnet_az1"
  }
}
