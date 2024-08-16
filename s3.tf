resource "aws_s3_bucket" "tf_state_bucket" {
  bucket = "admin-s3-statefile"
  acl    = "private"
  tags = {
    Name        = "TerraformStateBucket"
    Environment = "Development"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.tf_state_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
