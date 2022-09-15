output "users_html" {
  value = templatefile(local.users_html_template_file, tomap({ users = data.gitlab_users.users.users }))
}
