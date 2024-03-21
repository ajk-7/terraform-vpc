resource "aws_security_group" "allow_HTTP" {
  name        = "allow_HTTP"
  description = "Allow HTTP,SSH inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id

  tags = {
    Name = "allow_HTTP"
  }

  ingress = [
    {
      description = "HTTP"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      description = "SSH"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
    # ... you can add more ingress rules here ...
  ]

  egress = {
    description = "HTTP"
    from_port   =  0
    to_port     =  0
    protocol    =  "tcp"
    cidr_block  =   ["0.0.0.0/0"]
  }
}

