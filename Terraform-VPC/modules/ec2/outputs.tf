output "ec_2_instances_from_ec2_module" {
  value = aws_instance.ec2-Terraform-Vpc.*.id
}