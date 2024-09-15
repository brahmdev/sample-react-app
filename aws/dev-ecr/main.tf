module "s3-bucket" {
  source             = "./../modules/s3"
  s3_bucket_name     = var.s3_bucket_name
  s3_bucket_tag_env  = var.s3_bucket_tag_env
  s3_bucket_tag_name = var.s3_bucket_name
}

module "ecr-repo" {
  source             = "./../modules/ecr"
  ecr_name           = var.ecr_name
  tags               = var.tags
  image_mutability   = var.image_mutability
}