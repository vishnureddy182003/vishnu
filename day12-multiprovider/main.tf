# Provider-1 for us-east-1 (Default Provider)
provider "aws" {
  region = "ca-central-1"
}

#Another provider alias 
provider "aws" {
  region = "us-east-1"
  alias = "america"
}

resource "aws_s3_bucket" "test" {
  bucket = "del-vishnu-naresh-it"

}
resource "aws_s3_bucket" "vishnu2" {
  bucket = "del-hyd-naresh-it-t2"
  provider = aws.america  #provider.value of alias
  
}