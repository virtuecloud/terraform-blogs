// Define variables to be passed to the module

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "public_subnets" {
  description = "A list of public subnet CIDR blocks"
  type        = list(string)
}
variable "region" {
  description = "AWS Region"
  type        = string
}
