// the file will contain the Terraform Configuration

// define the AWS provider
provider "aws" {
    region = var.aws_region
}

resource "aws_vpc" "my_vpc" {
    cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "my_subnet" {
    vpc_id                  = aws_vpc.my_vpc.id
    cidr_block              = "10.0.0.0/24"
    availability_zone       = "${var.aws_region}a"
}

resource "aws_security_group" "my_sg" {
  name        = "my-security-group"
  description = "Allow inbound SSH and HTTP traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


