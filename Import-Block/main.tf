# This file starts intentionally empty

# Terraform import does not write config, and it refuses to run until a resource block for the target already exists
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "${var.prefix}-vpc"
    Environment = var.environment
  }
}

# import subnet
import {
    to = aws_subnet.app
    id = "subnet-0bfe6abae2207003e"
}

resource "aws_subnet" "app" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "${var.prefix}-subnet"
    Environment = var.environment
  }
}

# import security group
import {
    to = aws_security_group.main
    id = "sg-068bceb743d69baa9"
}

resource "aws_security_group" "main" {
  name = "${var.prefix}-web-sg"
  description = "Lab security group"
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.prefix}-web-sg"
    Environment = var.environment
  }
}