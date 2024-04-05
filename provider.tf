terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.43.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
  access_key = "paste your access_key ID here"
  secret_key = "paste your secret_key ID here"
}
