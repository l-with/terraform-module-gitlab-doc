locals {
  groups_template_vars = merge(
    tomap({
      groups = data.gitlab_groups.groups.groups
    }),
    tomap({
      groups_sort      = var.groups_sort
      tabulator_theme  = var.tabulator_theme,
      html_font_family = var.html_font_family
    }),
    tomap({
      branch_protection_text = local.branch_protection_text
  }))
}

output "groups_html" {
  value = templatefile(local.groups_html_template_file, local.groups_template_vars)
}
