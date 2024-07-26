provider "aws" {
  region = var.region
}

module "vpc" {
  source              = "./modules/vpc"
  name                = var.name
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}

module "ec2" {
  source            = "./modules/ec2"
  name              = var.name
  ami               = var.ami
  instance_type     = var.instance_type
  key_name          = var.key_name
  public_subnet_id  = module.vpc.public_subnet_id
  private_subnet_id = module.vpc.private_subnet_id
}
