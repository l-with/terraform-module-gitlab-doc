locals {
  projects = [
    for index, project in data.gitlab_projects.projects.projects :
    merge(project, {
      members = data.gitlab_project_membership.project_membership[project.name].members
    })
  ]

  projects_template_vars = merge(
    tomap({
      projects = local.projects
    }),
    tomap({
      projects_sort    = var.projects_sort
      tabulator_theme  = var.tabulator_theme,
      html_font_family = var.html_font_family
  }))
}

output "projects_html" {
  value = templatefile(local.projects_html_template_file, local.projects_template_vars)
}
