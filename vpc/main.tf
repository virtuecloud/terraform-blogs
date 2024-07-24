// Call the VPC module
module "vpc" {
  source          = "./vpc-module" // Path to the VPC module
  cidr_block      = var.cidr_block // Pass the CIDR block variable
  vpc_name        = var.vpc_name // Pass the VPC name variable
  public_subnets  = var.public_subnets // Pass the public subnets variable
}
