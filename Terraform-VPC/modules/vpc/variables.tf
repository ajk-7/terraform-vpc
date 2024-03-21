variable "cidr-range-for-terraform-vpc" {
  description = "VPC cidr range"
  type = string
}

variable "subnet-cidr" {
    description = "subnet range"
    type = list(string)
  
}

variable "subnetname" {
  description = "names for terraform subnet"
  type = list(string)
  default = [ "PublicSubnet1","PublicSubnet2" ]
}