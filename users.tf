locals {
  users_html_template_file_basename = "users.html.tftpl"
  input_users_html_template_file    = "${var.template_files_path}/${local.users_html_template_file_basename}"
  default_users_html_template_file  = "${path.module}/templates/${local.users_html_template_file_basename}"
  users_html_template_file          = fileexists(local.input_users_html_template_file) ? local.input_users_html_template_file : local.default_users_html_template_file
}

data "gitlab_users" "users" {
  order_by = "name"
}