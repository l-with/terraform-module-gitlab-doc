provider "gitlab" {
  token    = var.gitlab_token
  base_url = "${var.gitlab_url}/${var.gitlab_api_v4_path}"
}