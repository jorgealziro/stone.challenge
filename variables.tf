
variable "vpc_region" {
  description = "Region for test VPC"
  default     = "us-east-2"
}

# VPC Config
variable "vpc_name" {
  description = "VPC for deploying test VM"
  default     = "test-vpc"
}

variable "vpc_cidr_block" {
  default     = "10.0.0.0/16"
}
