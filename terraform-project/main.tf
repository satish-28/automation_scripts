provider "aws" {

	region = "ap-south-1"
}
module "Bucket" {
  source = "./modules/Bucket"  
}
module "Role-policy" {
  source = "./modules/Role&policy"
  
}
module "VPC" {
  source = "./modules/VPC"
  
}

module "Securitygroup" {
  source = "./modules/Securitygroup"
  vpc_id = ["${module.VPC.vpc_id}"]
  vpc_cidr = ["${module.VPC.vpc_CIDR}"]
}