locals {
  users_template_vars = merge(tomap({
    users = data.gitlab_users.users.users
  }), tomap({
    tabulator_theme = var.tabulator_theme,
    html_font_family = var.html_font_family
  }))
}

output "users_html" {
  value = templatefile(local.users_html_template_file, local.users_template_vars)
}
