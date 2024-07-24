// Input variable for the VPC CIDR block
variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

// Input variable for the VPC name
variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

// Input variable for the list of public subnet CIDR blocks
variable "public_subnets" {
  description = "A list of public subnet CIDR blocks"
  type        = list(string)
}
