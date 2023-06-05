// the file will define input variables

variable "aws_region" {
    description = "AWS region"
    type        = string
    default     = "eu-north-1"
}

variable "vpc_cidr_block" {
    description = "CIDR block for the VPC"
    type        = string 
    default     = "10.0.0.0/16"
}

# variable "ec2_instance_type" {
#   description = "EC2 instance type"
#   type        = string
#   default     = "t2.micro"
# }

# variable "subnet_cidr_block" {
#   description = "CIDR block for the subnet"
#   type        = string
#   default     = "10.0.1.0/24"
# }

# variable "security_group_name" {
#   description = "Name of the security group"
#   type        = string
#   default     = "my-security-group"
# }

# variable "security_group_ingress_rules" {
#   description = "Ingress rules for the security group"
#   type        = list(object({
#     from_port   = number
#     to_port     = number
#     protocol    = string
#     cidr_blocks = list(string)
#   }))
#   default = [
#     {
#       from_port   = 22
#       to_port     = 22
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     },
#     {
#       from_port   = 80
#       to_port     = 80
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     }
#   ]
# }

