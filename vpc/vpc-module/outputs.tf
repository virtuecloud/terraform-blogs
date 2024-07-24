// Output the VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.devvpc.id
}

// Output the IDs of the public subnets
output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = aws_subnet.public[*].id
}
