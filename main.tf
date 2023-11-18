provider "aws" {
    region = "ap-south-1"
}

resource "aws_s3_bucket" "Terraform-s3" {
  bucket = var.bucket
}

resource "aws_s3_bucket_versioning" "Terraform-s3-versioning" {
  bucket = aws_s3_bucket.Terraform-s3.id
  versioning_configuration {
    status = Enabled
  }
}
