
variable "vpc_region" {
  description = "Region for test VPC"
  default     = "us-east-1"
}

# VPC Config
variable "vpc_name" {
  description = "VPC for deploying test VM"
  default     = "test-vpc"
}

variable "vpc_cidr_block" {
  default     = "10.0.0.0/16"
}

# Subnet Config

variable "subnet_name" {
  description = "Public subnet"
  default     = "Public Test Subnet"
}

variable "subnet_public_cidr" {
  description = "CIDR for public subnet"
  default     = "10.0.1.0/24"
}

variable "subnet_public_az" {
  description = "Availability zone for public subnet"
  default     = "us-east-1a"
}

variable "sg_public" {
  description = "Security group for public traffic"
  default     = "public sg"
}

# VM Config

variable "instance_type" {
  default = "t2.micro"
}

variable "ec2_name" {
  default = "web"
}
