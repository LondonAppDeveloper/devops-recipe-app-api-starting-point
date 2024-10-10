terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "gitops-recepie-app-tf-state"
    key            = "tf-state-setup"
    encrypt        = true
    region         = "us-east-1"
    dynamodb_table = "gitops-recepie-api-tf-lock"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      Contact     = var.contact
      ManagedBy   = "Terraform/Setup"
    }
  }
}
