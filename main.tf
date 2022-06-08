terraform {
  //update the version of terraform as required
  required_version = ">= 1.2.2"
  //initialise a backend configuration for terraform to save the state file. Do not use local state files.
  backend "s3" {
  }
  //Add in all required providers needed to run the terraform you are using.
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  //Add a default region for your deployments, this should be a variable in the variables.tf file with a default value.
  region = var.region
  // Add default tags for your project, any resource which accepts tags will automatically have the below tags added to them.
  default_tags {
    tags = {
      Project   = "IRex",
      Terraform = "True"
    }
  }
}
