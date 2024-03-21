#vpc
resource "aws_vpc" "terrform-vpc" {
  cidr_block = var.cidr-range-for-terraform-vpc
  instance_tenancy = "default"
  tags ={
    "Name" = "Terraform-Vpc"
  }
}
#subnets
resource "aws_subnet" "terrform-vpc-subnet" {
  count = length(var.subnet-cidr)
  vpc_id     = aws_vpc.terrform-vpc.id
  cidr_block = var.subnet-cidr[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnetname[count.index]
  }
}
#internetgateway
resource "aws_internet_gateway" "terraform-igw" {
    vpc_id = var.cidr-range-for-terraform-vpc

    tags ={
        Name = "Terraform IGW"
    }
  
}
#routetable
resource "aws_route_table" "terrform-vpc-routetable" {
    vpc_id = var.cidr-range-for-terraform-vpc

    tags={
      Name="-Terraform vpc route table"
    }
  
}
#route table associations
resource "aws_route_table_association" "terrform-vpc-routetable-associations" {
    count = length(var.subnet-cidr)
    subnet_id = aws_subnet.terrform-vpc-subnet[count.index].id
    route_table_id = aws_route_table.terrform-vpc-routetable.id
}