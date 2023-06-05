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

