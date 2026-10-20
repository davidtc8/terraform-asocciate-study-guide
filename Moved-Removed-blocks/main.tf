# VPC
removed {
  from = aws_vpc.main

  lifecycle {
    destroy = false
  }
}

# Subnet
removed {
  from = aws_subnet.app

  lifecycle {
    destroy = false
  }
}

# Route Table - removed

# Security Groups
removed {
  from = aws_security_group.app

  lifecycle {
    destroy = false
  }
}