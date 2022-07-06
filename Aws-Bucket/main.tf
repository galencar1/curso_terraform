terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
        sousource = "hashicorp/aws"
        version = "3.73.0"
    }
  }
}

provider "aws" {
  region = us-east-1

  default_tags {
    tags = {
        owner = "gabrielfa"
        managed-by = "terraform"
    }
  }
}

