resource "random_string" "suffix" {
  length  = 8
  special = false
}

resource "aws_s3_bucket" "storage_bucket" {
  # Combine base name with a unique suffix to ensure uniqueness
  bucket = "${var.bucket_name}-${random_string.suffix.result}"

  tags = {
    Name = "Terraform-S3"
  }
}
