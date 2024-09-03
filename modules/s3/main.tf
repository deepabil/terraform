resource "random_string" "bucket_suffix" {
  length  = 8
  special = false
  upper   = false
  lower   = true
  number  = true
}
resource "aws_s3_bucket" "storage_bucket" {
  # Combine base name with a unique suffix to ensure uniqueness
  bucket = "${var.bucket_name}-${random_string.bucket_suffix.result}"
  tags = {
    Name = "Terraform-S3"
  }
}
