# VPC
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "MainVPC"
  }
}

# Public Subnet
resource "aws_subnet" "public_main" {
  count = length(var.public_subnet_cidrs)

  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidrs[count.index]
  availability_zone = element(var.availability_zones, count.index)

  map_public_ip_on_launch = true

  tags = {
    Name = "PublicSubnet-${count.index}"
  }
}

# Private Subnet
resource "aws_subnet" "private_main" {
  count = length(var.private_subnet_cidrs)

  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidrs[count.index]
  availability_zone = element(var.availability_zones, count.index)

  tags = {
    Name = "PrivateSubnet-${count.index}"
  }
}

# IGW
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "MainInternetGateway"
  }
}

# NAT GW
resource "aws_eip" "main" {
  vpc = true
}

# NGW
resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.main.id
  subnet_id     = aws_subnet.private_main[0].id

  tags = {
    Name = "MainNATGateway"
  }
}

# Public Route Table
resource "aws_route_table" "main_public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = "PublicRouteTable"
  }
}

# Private Route Table
resource "aws_route_table" "main_private" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.main.id
  }

  tags = {
    Name = "PrivateRouteTable"
  }
}

# Public & Private Route Table Associations
resource "aws_route_table_association" "main_public" {
  count = length(var.public_subnet_cidrs)

  subnet_id      = aws_subnet.public_main[count.index].id
  route_table_id = aws_route_table.main_public.id
}


resource "aws_route_table_association" "main_private" {
  count = length(var.private_subnet_cidrs)

  subnet_id      = aws_subnet.private_main[count.index].id
  route_table_id = aws_route_table.main_private.id
}
