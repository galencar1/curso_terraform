resource "aws_s3_bucket" "first_bucket" {
  bucket = "gabrielfa-remote-state"

  versioning {
    enabled = true
  }
}