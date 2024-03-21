variable "vpc_security_group_ids" {
  description = "sg for load balancer"
  type = string
}


variable "subnets_alb"{
    description = "sg for load balancer"
    type = list(string)
}


variable "vpc_id" {
    description = "VPC ID for ALB"
    type = string
}

variable "instances" {
  description = "Instance ID for Target Group Attachment"
  type = list(string)
}