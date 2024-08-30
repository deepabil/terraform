

provider "aws" {
  region = var.region
}

module "vpc" {
  source   = "./modules/vpc"
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}

module "ec2" {
  source            = "./modules/ec2"
}
