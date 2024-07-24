# Terraform Project

This project contains Terraform configurations for setting up a cloud infrastructure.

## Structure

- `main.tf`: Main Terraform configuration file that calls various modules.
- `variables.tf`: Variables used in the Terraform configuration.
- `terraform.tfvars`: Values for the variables.
- `provider.tf`: Configuration for the cloud provider.
- `vpc-module/`: Directory containing the VPC module.

## Usage

1. **Clone the Repository**:
   ```sh
   git clone https://github.com:virtuecloud/terraform-blogs.git
   cd vpc

2. **Initialize Terraform**:

    ```sh
    terraform init

3. **Plan the Configuration**:

    ```sh
    terraform plan

4. **Apply the Configuration**:

    ```sh
    terraform apply