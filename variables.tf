variable "gitlab_token" {
  description = "the token for the  terraform-provider-gitlab"
  type        = string
  sensitive   = true
}

variable "gitlab_url" {
  description = "the gitlab url"
  type        = string
}

variable "gitlab_api_v4_path" {
  description = "the path for the GitLab api"
  type        = string
  default     = "/api/v4/"
}

variable "template_files_path" {
  description = "the path of the template files"
  type        = string
  default     = "templates"
}
