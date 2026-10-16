terraform {
  required_version = ">= 1.5.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

#   backend "s3" {
#     bucket = "lab-tf-state-914820856865"
#     key = "networking/terraform.tfstate"
#     region = "us-east-1"
#     encrypt = true
#   }
}

provider "aws" {
  region = var.aws_region
}