variable "tf_state_bucket" {
  description = "The name of the S3 bucket to store the Terraform state file"
  default     = "dnd-recipe-app-tf-state"
}

variable "tf_state_lock_table" {
  description = "The name of the DynamoDB table to use for Terraform state locking"
  default     = "devops-recipe-app-tf-lock"
}

variable "project" {
  description = "The name of the project used by the default tags"
  default     = "dnd-recipe-app"
}

variable "contact" {
  description = "The contact information used by the default tags"
  default     = "dhanushndinesh@gmail.com"
}
