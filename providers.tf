terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  required_version = ">= 1.3.0"
   backend "s3" {
    bucket         = "remote-s3-12354325432"
    key            = "path/to/my-app.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table" # for state locking
  }
}
