terraform {
  backend "s3" {
    bucket = "s3-tf-backend-11302022"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}