// Define the AWS VPC resource
resource "aws_vpc" "devvpc" {
  cidr_block = var.cidr_block // Use the input variable for the CIDR block

  tags = {
    Name = var.vpc_name // Tag the VPC with the name from the input variable
  }
}

// Define the AWS Subnet resource for public subnets
resource "aws_subnet" "public" {
  count = length(var.public_subnets) // Create a subnet for each CIDR block in the list

  vpc_id     = aws_vpc.devvpc.id // Associate the subnet with the VPC
  cidr_block = element(var.public_subnets, count.index) // Use each CIDR block from the list

  tags = {
    Name = "${var.vpc_name}-public-${count.index}" // Tag each subnet with a unique name
  }
}
