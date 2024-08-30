

provider "aws" {
  region = var.region
}

module "vpc" {
  source   = "./modules/vpc"
}

module "s3" {
  source      = "./modules/s3"
}

module "ec2" {
  source            = "./modules/ec2"
}
