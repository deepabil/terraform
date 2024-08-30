resource "aws_s3_bucket" "storage_bucket" {
  bucket = var.bucket_name

  tags = {
    Name = "Terraform-S3"
  }
}
