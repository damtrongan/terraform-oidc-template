resource "aws_s3_bucket" "s3-full-access" {
  bucket = "s3-full-access"
  force_destroy = true
}