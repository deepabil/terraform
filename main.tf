data "aws_secretsmanager_secret" "aws_credentials" {
  name = "terraform-aws-credentials"
}

data "aws_secretsmanager_secret_version" "aws_credentials_version" {
  secret_id = data.aws_secretsmanager_secret.aws_credentials.id
}

locals {
  credentials = jsondecode(data.aws_secretsmanager_secret_version.aws_credentials_version.secret_string)
}

provider "aws" {
  region = var.region
  access_key  = local.credentials["access_key"]
  secret_key  = local.credentials["secret_key"]
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
