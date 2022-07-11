resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "vpc-provider-terraform"
  }
}

resource "aws_vpc" "vpc-usohio" {
  provider = aws.usohio1

  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "vpc-provider-terraform"
  }
}

/*
resource "aws_vpc" "vpc-USOHIO" {
  provider   = aws.USOHIO
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "vpc-provider-terraform"
  }
}*/