resource "aws_s3_bucket" "test_bucket" {
  bucket = "s3-full-access"
  force_destroy = true
}