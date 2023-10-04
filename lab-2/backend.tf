terraform {
  backend "s3" {
    bucket         = "backendterra"
    key            = "terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "state-lock"
  }
}
