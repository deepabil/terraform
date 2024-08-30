

provider "aws" {
  region = var.region
}

module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}

module "ec2" {
  source            = "./modules/ec2"
  instance_type     = var.instance_type
  ami_id            = var.ami_id
  subnet_id         = module.vpc.subnet_id
  security_group_id = module.vpc.security_group_id
}
