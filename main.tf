module "test_vpc" {
  source = "./modules/test_vpc"
   
  vpc_region =  var.vpc_region
  vpc_name =  var.vpc_name
  vpc_cidr_block =  var.vpc_cidr_block

}


