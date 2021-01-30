terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "2.70"
    }
  }
}

provider "aws" {
  profile = "devTrainee1"
  region  = "us-east-2"

}

module "vpc" {
  source = "../modules/vpc"
  vpc_cidr = "192.168.0.0/16"
  tenancy = "default"
  vpc_id =  "${module.vpc.vpc_id}"
  subnet_cidr = "192.168.1.0/24"
}

module "ec2" {
  source = "../modules/ec2"
  instance_count = "1"
  ami_id= "ami-0a0ad6b70e61be944"
  instance_type = ""
  subnet_id = "${module.vpc.subnet_id}"
}
