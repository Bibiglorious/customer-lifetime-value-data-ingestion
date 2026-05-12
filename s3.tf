resource "aws_s3_bucket" "clv-bucket" {
  bucket = "clv-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}