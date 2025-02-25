terraform {
  backend "s3" {
    bucket         = "terraform-state-zach"
    key            = "scalable-webapp/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-lock"
  }
}
provider "aws" {
  region = "eu-west-1"
}

