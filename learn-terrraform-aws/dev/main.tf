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

module "my_vpc" {
  source      = "../modules/vpc"
  vpc_cidr    = "192.168.0.0/16"
  tenancy     = "default"
  vpc_id      = module.my_vpc.output_vpc_id
  subnet_cidr = "192.168.1.0/24"
}

module "ec2" {
  source         = "../modules/ec2"
  instance_count = 1
  ami_id         = "ami-0a0ad6b70e61be944"
  instance_type  = "t2.micro"
  subnet_id      = module.my_vpc.output_subnet_id
}

module "sg" {
  source = "../modules/sec-grp"

  name        = "security-grp"
  description = "Traffic rules for http and ssh protocol"
  vpc_id      = module.my_vpc.output_vpc_id
  ingress     = module.sg.ingress
  egress      = module.sg.egress

}