#variable "count" {
##}

variable "region" {
  description = "AWS region for hosting our your network"
  default     = "us-east-2"
}
variable "public_key_path" {
  description = "Enter the path to the SSH Public Key to add to AWS."
  default     = "/C/Users/chokh/Desktop/aws_training1.pem"
}
variable "key_name" {
  description = "Key name for SSHing into EC2"
  default     = "aws_training1"
}
variable "amis" {
  description = "Base AMI to launch the instances"
  default = {
    us-east-2 = "ami-0a0ad6b70e61be944"
  }
}