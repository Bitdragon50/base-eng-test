terraform {
  required_version = ">= 1.5.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "base-mc-test"

    workspaces {
      name = "base-eng-test"
    }
  }
}
