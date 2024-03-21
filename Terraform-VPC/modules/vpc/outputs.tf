output "vpc_id" {
  value = aws_vpc.terrform-vpc.id
}

output "subnet_id" {
  value = aws_subnet.terrform-vpc-subnet.*.id
}