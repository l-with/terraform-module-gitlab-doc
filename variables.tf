variable "gitlab_token" {
  description = "the token for the  terraform-provider-gitlab"
  type        = string
  sensitive   = true
}

variable "gitlab_base_url" {
  description = "the gitlab_base_url for the terraform-provider-gitlab"
  type        = string
}

variable "template_files_path" {
  description = "the path of the template files"
  type        = string
  default     = "templates"
}
