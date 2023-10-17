region = "us-east-1"

tags = {
  "Environment" = "development"
}

ecr_name = [
  "scania-backstage-demo-web-app"
]

image_mutability = "IMMUTABLE"

s3_bucket_name = "dev_scania_backstage"

s3_bucket_key = "dev"

s3_bucket_tag_name = "ECR"

s3_bucket_tag_env = "development"