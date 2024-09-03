resource "aws_s3_bucket" "dev" {
    bucket = "vishnu-reddy-aws"
  
}
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.dev.id
  versioning_configuration {
    status = "Enabled"
  }
}