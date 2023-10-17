variable "ecr_name" {
  description = "The list of ecr names to create"
  type        = list(string)
  default     = null
}
variable "tags" {
  description = "The key-value maps for tagging"
  type        = map(string)
  default     = {}
}
variable "image_mutability" {
  description = "Provide image mutability"
  type        = string
  default     = "MUTABLE"
}

variable "encrypt_type" {
  description = "Provide type of encryption here"
  type        = string
  default     = "KMS"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket to store the Terraform remote backend"
  type        = string
  default     = null
}

variable "s3_bucket_key" {
  description = "The key of the S3 bucket to store the Terraform remote backend"
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