terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "ap-southeast-2"
}

resource "aws_instance" "TF_server" {
  ami           = "ami-0c6120f461d6b39e9"
  instance_type = "t2.micro"

  tags = {
    Name = "TFInstance"
  }
}
