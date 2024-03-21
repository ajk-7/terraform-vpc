module "vpc" {
  source = "./modules/vpc"
  cidr-range-for-terraform-vpc = var.cidr-range-for-terraform-vpc
  subnet-cidr = var.subnet-cidr
}

module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}


module "ec2" {
  source = "./modules/ec2"
  aws_security_group-terraform = module.sg.sg-id
  aws_subnet_id_from_vpc_module = module.vpc.subnet_id
}

module "alb" {
  source = "./modules/alb"
  vpc_security_group_ids = module.sg.sg-id
  subnets_alb = module.vpc.subnet_id
  vpc_id = module.vpc.vpc_id
  instances = module.ec2.ec_2_instances_from_ec2_module
}