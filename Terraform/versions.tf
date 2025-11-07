terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.19.0"
    }
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      owner = "shrimant"
    }
  }
}

variable "region" {
  description = "aws region"
  default     = "us-east-1"
}