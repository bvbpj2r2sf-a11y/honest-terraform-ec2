# 1. Define the required provider plugin and version constraint
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0" # Targets the latest 6.x release
    }
  }
  required_version = ">= 1.0.0"
}

# 2. Configure the AWS Provider settings
provider "aws" {
  region = "eu-west-2"
}