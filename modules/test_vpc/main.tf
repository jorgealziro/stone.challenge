resource "aws_vpc" "test_vpc" {
  cidr_block = var.vpc_cidr_block

tags = {
    Name = "Test VPC"
  }
}
