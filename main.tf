module "test_vpc" {
  source = "./modules/test_vpc"

  vpc_region =  var.vpc_region
  vpc_name =  var.vpc_name
  vpc_cidr_block =  var.vpc_cidr_block

}

module "subnet_public" {
  source = "./modules/test_subnet"

  vpc_id      = module.test_vpc.id
  vpc_region  = module.test_vpc.region
  subnet_name = var.subnet_name
  subnet_cidr = var.subnet_public_cidr
  subnet_az   = var.subnet_public_az
}
