terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.23.0"
    }
  }
}

provider "aws" {

    region = "us-east-1"
}

resource "aws_instance" "demo-instance"{

    ami ="ami-0ecb62995f68bb549"
    instance_type = "t2.micro"
    key_name = "ubuntu_key"
    tags = {
        Name = "vk_instance"
    }

}



