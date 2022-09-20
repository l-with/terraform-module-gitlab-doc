locals {
  projects_html_template_file_basename = "projects.html.tftpl"
  input_projects_html_template_file    = "${var.template_files_path}/${local.projects_html_template_file_basename}"
  default_projects_html_template_file  = "${path.module}/templates/${var.template_type}/${local.projects_html_template_file_basename}"
  projects_html_template_file          = fileexists(local.input_projects_html_template_file) ? local.input_projects_html_template_file : local.default_projects_html_template_file
}

data "gitlab_projects" "projects" {
}

data "gitlab_project_membership" "project_membership" {
  for_each   = zipmap(data.gitlab_projects.projects.projects.*.name, data.gitlab_projects.projects.projects.*.id)
  project_id = each.value
  inherited  = true
}
