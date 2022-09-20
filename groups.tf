locals {
  groups_html_template_file_basename = "groups.html.tftpl"
  input_groups_html_template_file    = "${var.template_files_path}/${local.groups_html_template_file_basename}"
  default_groups_html_template_file  = "${path.module}/templates/${var.template_type}/${local.groups_html_template_file_basename}"
  groups_html_template_file          = fileexists(local.input_groups_html_template_file) ? local.input_groups_html_template_file : local.default_groups_html_template_file
}

locals {
  branch_protection_text = tomap({
    0 = "no protection"
    1 = "partial protection"
    2 = "full protection"
    3 = "protect against pushes"
  })
}

data "gitlab_groups" "groups" {
}
