terraform {

#   backend "s3" {
#     bucket         = "pankusha-tf-state"
#     key            = "tf-infra/hashi_tf.state"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-state-locking"
#     encrypt        = true
#   }
# :3,9s/^/# /   For local backend
# :3,9s/^# //   For s3-based backend
#

  cloud {
    organization = "Pankusha"
    workspaces {
      name = "hashi"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.3.0"
}

provider "aws" {
  profile = "igortf"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-011899242bb902164"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
