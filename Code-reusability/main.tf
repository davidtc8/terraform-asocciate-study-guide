# Static configuration with hardcoded values
resource "aws_vpc" "production" {
  cidr_block           = var.vpc_cidr # updated
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "${var.environment}-vpc" # updated
    Environment = var.environment          # updated
    Project     = var.project_name         # updated
    ManagedBy   = "terraform"
    Region      = data.aws_region.current.name                # updated
    AccountID   = data.aws_caller_identity.current.account_id # updated
  }
}

resource "aws_subnet" "private" {
  vpc_id                  = aws_vpc.production.id
  cidr_block              = var.subnet_cidr                                # updated
  availability_zone       = data.aws_availability_zones.available.names[0] # updated
  map_public_ip_on_launch = false

  tags = {
    Name        = "${var.environment}-private-subnet" # updated
    Environment = var.environment                     # updated
    Project     = var.project_name                    # updated
    ManagedBy   = "terraform"
    Region      = data.aws_region.current.name                   # updated
    AZ          = data.aws_availability_zones.available.names[0] # updated
  }
}

resource "aws_route_table" "static" {
  vpc_id = aws_vpc.production.id

  tags = {
    Name        = "${var.environment}-route-table" # updated
    Environment = var.environment                  # updated
    Project     = var.project_name                 # updated
    ManagedBy   = "terraform"
    Region      = data.aws_region.current.name # updated
  }
}

# Retrieve the availability zones in the target region
data "aws_availability_zones" "available" {
  state = "available"
}

# Retrieve information about the target region
data "aws_region" "current" {}

# Retrieve information about the user and account
data "aws_caller_identity" "current" {}