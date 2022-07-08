terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }
  }

  backend "s3" {
    bucket = "gabrielfa-remote-state"
    key    = "aws-vm-provisioners/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "Gabriel Alencar"
      managed-by = "terraform"
    }
  }
}

//Pega os dados que foram feitos output na VPC. Por isso as informações devem ser iguais
// as informações adicionadas na backend-vpc no main.tf
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "gabrielfa-remote-state"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}