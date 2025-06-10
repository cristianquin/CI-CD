terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.3.0"

  backend "local" {}
  # O puedes configurar un backend remoto como S3 para estado compartido
}

provider "aws" {
  region = "us-east-1"
}
