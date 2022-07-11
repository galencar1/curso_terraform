terraform {

  required_version = ">=1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }
  }

  backend "s3" {
    bucket = "gabrielfa-remote-state"
    key    = "aws-vpc-provider/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {

    tags = {
      owner      = "Gabriel Alencar"
      managed-by = "terraform"
      region     = "us-east-1"
    }
  }

  provider "aws" {
    alias  = "usohio1"
    region = "us-east-2"

    default_tags {

      tags = {
        owner      = "Gabriel Alencar"
        managed-by = "terraform"
        region     = "us-east-2"
      }
    }
  }
}