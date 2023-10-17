terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region  = var.region
}

resource "aws_s3_bucket" "s3_bucket" {
   bucket = var.s3_bucket_name

    tags = {
        Name        = var.s3_bucket_tag_name
        Environment = var.s3_bucket_tag_env
    }
}