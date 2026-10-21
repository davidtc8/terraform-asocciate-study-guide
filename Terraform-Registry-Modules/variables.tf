variable "environment" {
  description = "Environment name used to prefix resources"
  type        = string
  default     = "dev"
}

variable "region" {
    description = "AWS Region for the VPC availability zones"
    type = string
    default = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block fot the VPC"
  type = string
  default = "10.0.0.0/16"
}

variable "bucket_names" {
    description = "Names for the additional S3 Buckets"
    type = list(string)
    default = [ "logs", "images" ]
}
