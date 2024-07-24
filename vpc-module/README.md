# VPC Module

This module creates a VPC along with public subnets.

## Usage

```hcl
module "vpc" {
  source          = "./vpc-module"
  cidr_block      = "10.0.0.0/16"
  vpc_name        = "example-vpc"
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
}
```

## Inputs

| Name            | Description                        | Type         | Default | Required |
|-----------------|------------------------------------|--------------|---------|----------|
| cidr_block      | The CIDR block for the VPC         | `string`     | n/a     | yes      |
| vpc_name        | The name of the VPC                | `string`     | n/a     | yes      |
| public_subnets  | A list of public subnet CIDR blocks| `list(string)` | n/a   | yes      |

## Outputs

| Name              | Description                 |
|-------------------|-----------------------------|
| vpc_id            | The ID of the VPC           |
| public_subnet_ids | The IDs of the public subnets|
