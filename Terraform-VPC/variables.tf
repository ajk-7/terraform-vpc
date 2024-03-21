variable "cidr-range-for-terraform-vpc" {
  description = "VPC cidr range"
  type = string
}

variable "subnet-cidr" {
    description = "subnet range"
    type = list(string)
  
}