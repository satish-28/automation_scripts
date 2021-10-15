#creating VPC 
resource "aws_vpc" "surajvpc" {
  cidr_block = "${var.vpc_cidr}"

  tags = {
    Name = "${var.vpc_name}"
  }
}

// creating  Subnet 1
resource "aws_subnet" "first" {
  vpc_id     = aws_vpc.surajvpc.id
  cidr_block = "${var.subnet1_cidr}"
  tags = {
    Name = "${var.subnet1_name}"
  }
}

// creating Subnet 2
resource "aws_subnet" "second" {
  vpc_id     = aws_vpc.surajvpc.id
  cidr_block = "${var.subnet2_cidr}"

  tags = {
    Name = "${var.subnet2_name}"
  }
}

// creating internet gateway
resource "aws_internet_gateway" "main-igw" {
  vpc_id = "${aws_vpc.surajvpc.id}"

  tags = {
    Name = "main-igw"
  }
}
// creating route table
resource "aws_route_table" "main-route-table" {
  vpc_id = "${aws_vpc.surajvpc.id}"
  route {
    cidr_block = "${var.rtcb}"
    gateway_id = "${aws_internet_gateway.main-igw.id}"
  }
  tags = {
    Name = "main-route-table"
  }
}
//creating route table association
resource "aws_route_table_association" "public-assoc-1" {
  subnet_id      = "${aws_subnet.first.id}"
  route_table_id = "${aws_route_table.main-route-table.id}"
}
