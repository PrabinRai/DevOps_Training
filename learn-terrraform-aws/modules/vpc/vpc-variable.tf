
variable "vpc_cidr" {
#type = 
 default = "10.0.0.0/16"
}

variable "tenancy" {
  default = "dedicated"
}

variable "vpc_id" {
type = string

}

variable "subnet_cidr" {
    # type =
    default = "10.0.0.0/24"
}
