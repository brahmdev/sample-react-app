terraform {
  backend "s3" {
    bucket = "scania-backstage"
    region = "us-east-1"
    key = "dev"
  }
}