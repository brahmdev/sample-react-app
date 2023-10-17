terraform {
  backend "s3" {
    bucket = var.s3_bucket_name
    region = var.region
    key = var.bucket_key
  }
}