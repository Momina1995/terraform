# 1. Configure the AWS Provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web_server" {
  ami           = ami-01a00762f46d584a1
  instance_type = "t3.micro"

  tags = {
    Name        = "Terraform-EC2-Instance"
  }
}
