terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  # backend "s3" {
  #   dynamodb_table = "state-lock"
  #   bucket         = "terraform-state"
  #   region         = "eu-west-2"
  #   key            = "murrad-solirius/prod.tfstate"
  # }
}

provider "aws" {
  region = var.aws_region

  #  assume_role {
  #    role_arn     = "###"
  #    session_name = "tech-test"
  #  }
  default_tags {
    tags = {
      team          = "devops"
      managed-by    = "terraform"
      deployed-from = "web-api-${var.env_name}"
    }
  }
}