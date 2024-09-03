terraform {
  backend "s3" {
    bucket         = "my-terraform-state"
    key            = "terraform/state.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

