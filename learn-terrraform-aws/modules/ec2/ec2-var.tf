variable "instance_count" {
  default = "1"
  
}

variable "ami_id" {
    type= string
    description = "ami used for web server instance "
  default = ""
}

variable "instance_type" {
  default = "t2.micro"   
  type = string
}

variable "subnet_id" {

}

/*
variable "public_key_path" {
  description = "Enter the path to the SSH Public Key to add to AWS."
  default     = "/C/Users/chokh/Desktop/aws_training1.pem"
}

variable "key_name" {
  description = "Key name for SSHing into EC2"
  default     = "aws_training1"
}
*/