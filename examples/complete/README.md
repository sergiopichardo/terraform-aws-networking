# Complete example

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
      // public subnets are indicated by setting the "public" option to true
      public = true
      az     = "us-east-1b"
    }
  }
}

```
