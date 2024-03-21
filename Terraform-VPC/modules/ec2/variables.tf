variable "aws_security_group-terraform" {
  description = "SG for ec2 from module"
  type = string
}

variable "aws_subnet_id_from_vpc_module" {
  description = "Subnet id for ec2"
  type = list(string)
}

variable "EC2_names"{
    description = "EC2-Names"
    type = list(string)
    default = [ "Webserver1","Webserver2" ]
}