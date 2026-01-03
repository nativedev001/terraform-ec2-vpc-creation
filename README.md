# AWS Terraform Project

This project contains Terraform code to create:

- 2 VPCs (East and West regions)
- 2 Subnets (1 in each VPC)
- 2 EC2 Instances (1 in each subnet)
- Key Pair for SSH access

## Prerequisites

- Terraform >= 1.5.0
- AWS CLI configured with proper credentials
- Existing Key Pair (`mykey`) in your AWS account

## Project Structure

.
├── main.tf # Providers and main Terraform resources
├── vpc.tf # VPC resources
├── subnet.tf # Subnet resources
├── ec2.tf # EC2 instances
├── variables.tf # Terraform variables
├── outputs.tf # Outputs
└── README.md

csharp
Copy code

## Usage

1. Initialize Terraform:

```bash
terraform init
Plan your changes:

bash
Copy code
terraform plan
Apply Terraform:

bash
Copy code
terraform apply
Destroy resources when done:

bash
Copy code
terraform destroy
Notes
The EC2 instances are Amazon Linux.

Make sure SSH access is allowed from your current IP in the security group.

Keep your private key safe (mykey.pem).