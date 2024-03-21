data "aws_ami" "amazon-2"{
    most_recent = true


    filter {
      name = "name"
      values = ["amzn2-ami-hvm-*-86_64-ebs"]
    }


    filter {
      name = "virtualization-type"
      values = ["hvm"]
    }
    owners = ["amazon"]
}



data "aws_availability_zone" "Terraform-availability_zone-EC2"  {
    state = "available"

}