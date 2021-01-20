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

resource "aws_instance" "terraform-ec2-instance" {
  ami           = "ami-0a0ad6b70e61be944"
  instance_type = "t2.micro"
  key_name = "aws_training1"
  security_groups = [ "sg-01ee929ed8a4a918d" ]
  #vpc_security_group_ids = [ "vpc-7b803e10" ]
  subnet_id = "subnet-3f4a0d73 "

}