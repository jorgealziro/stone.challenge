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

module "security_group" {
  source = "./modules/test_sg"

  vpc_id             = module.test_vpc.id
  vpc_region         = module.test_vpc.region
  sg_public          = var.sg_public
  subnet_public_cidr = var.subnet_public_cidr
}

module "web_vm" {
  source = "./modules/test_vm"


  instance_type = var.instance_type
  sg_id = module.security_group.public_id
  subnet = module.subnet_public.id
  key_name = module.subnet_public.pair_name
  priv_key = module.subnet_public.priv_pem
  ec2_name = var.ec2_name
}