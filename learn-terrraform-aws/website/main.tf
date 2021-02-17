terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>2.70"
    }
  }
}

provider "aws" {
  profile = "devTrainee1"
  region  = "us-east-2"

}

module "calculatorweb" {
  source     = "../modules/s3-bucket"
  bucketname = "calculator-in-web"

}