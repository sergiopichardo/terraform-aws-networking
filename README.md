# terraform-aws-networking

Networking Module Created during Terraform Course

## Networking Module

This module manages the creation of VPCs and Subnets, allowing for the creation of both private and public subnets.

Example usage:

```sh
module "vpc" {
  source = "./modules/networking"

  vpc_config = {
    name       = "13-local-modules"
    cidr_block = "10.0.0.0/16"
  }

  subnet_config = {
    subnet_1 = {
      cidr_block = "10.0.0.0/24"
      az         = "us-east-1a"
    }

    subnet_2 = {
      cidr_block = "10.0.1.0/24"
      public     = true
      az         = "us-east-1b"
    }
  }
}
```
