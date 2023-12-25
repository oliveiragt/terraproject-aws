terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "dev" {
    count = 3
    ami = "ami-0c7217cdde317cfec"
    instance_type = "t2.micro"
    key_name =  "terrakey"
    tags = {
        Name = "dev${count.index}"
    }
}