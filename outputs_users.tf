locals {
  users = [
    for user in data.gitlab_users.users.users :
    merge(user, {
      created_at         = regex("(\\d\\d\\d\\d-\\d\\d-\\d\\d \\d\\d:\\d\\d|)", user.created_at)[0]
      current_sign_in_at = regex("(\\d\\d\\d\\d-\\d\\d-\\d\\d \\d\\d:\\d\\d|)", user.current_sign_in_at)[0]
      last_sign_in_at    = regex("(\\d\\d\\d\\d-\\d\\d-\\d\\d \\d\\d:\\d\\d|)", user.last_sign_in_at)[0]
    })
  ]
  users_template_vars = merge(
    tomap({
      users = local.users
    }),
    tomap({
      tabulator_theme  = var.tabulator_theme,
      html_font_family = var.html_font_family
  }))
}

output "users_html" {
  value = templatefile(local.users_html_template_file, local.users_template_vars)
}
