variable "tf_state_bucket" {
  description = "The name of the S3 bucket to store the Terraform state file"
  default     = "devops-recipe-app-api-tf-lock"
}

variable "tf_state_lock_table" {
  description = "The name of the DynamoDB table to store the Terraform state lock"
  default     = "devops-recipe-app-api-tf-lock"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "recipe-app-api"
}

variable "contact" {
  description = "Contact email for tagging resources"
  default     = "fredsonmenezessumi@gmail.com"
}
