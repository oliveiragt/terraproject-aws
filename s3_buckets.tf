resource "aws_s3_bucket" "terrabucket" {
  bucket = "terrabalde"

  tags = {
    Name        = "Terrabalde"
    Environment = "Dev"
  }
}