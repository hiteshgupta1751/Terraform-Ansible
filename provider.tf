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
  access_key = "AKIAQV2HKOXQC3FMO3NV"
  secret_key = "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"
}