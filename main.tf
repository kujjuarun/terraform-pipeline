terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.57"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
  shared_credentials_file = "C:\Users\Minion1\.aws\credentials"
}