variable "ecr_name" {
  description = "The name of the ECR registry"
  type        = any
  default     = null
}

variable "image_mutability" {
  description = "Provide image mutability"
  type        = string
  default     = "IMMUTABLE"
}


variable "encrypt_type" {
  description = "Provide type of encryption here"
  type        = string
  default     = "KMS"
}

variable "tags" {
  description = "The key-value maps for tagging"
  type        = map(string)
  default     = {}
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket to store the Terraform remote backend"
  type        = string
  default     = null
}

variable "s3_bucket_tag_name" {
  description = "The tag name of the S3 bucket to store the Terraform remote backend"
  type        = string
  default     = null
}

variable "s3_bucket_tag_env" {
  description = "The environment tag of the S3 bucket to store the Terraform remote backend"
  type        = string
  default     = null
}

variable "region" {
  description = "The region for the resource"
  type        = string
  default     = null
}