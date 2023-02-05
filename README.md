# terraform-module-gitlab-doc

Terraform module which generates documentation for [GitLab](https://gitlab.com).

The documentation is generated as HTML.

## Terraform

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | >= 3.18 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | >= 3.18 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_groups.groups](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/data-sources/groups) | data source |
| [gitlab_project_membership.project_membership](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/data-sources/project_membership) | data source |
| [gitlab_projects.projects](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/data-sources/projects) | data source |
| [gitlab_users.users](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/data-sources/users) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gitlab_api_v4_path"></a> [gitlab\_api\_v4\_path](#input\_gitlab\_api\_v4\_path) | the path for the GitLab api | `string` | `"/api/v4/"` | no |
| <a name="input_gitlab_token"></a> [gitlab\_token](#input\_gitlab\_token) | the token for the  terraform-provider-gitlab | `string` | n/a | yes |
| <a name="input_gitlab_url"></a> [gitlab\_url](#input\_gitlab\_url) | the gitlab url | `string` | n/a | yes |
| <a name="input_groups_sort"></a> [groups\_sort](#input\_groups\_sort) | the value for sort for full\_path | `string` | `"asc"` | no |
| <a name="input_html_font_family"></a> [html\_font\_family](#input\_html\_font\_family) | the font family for html | `string` | `"sans-serif"` | no |
| <a name="input_projects_sort"></a> [projects\_sort](#input\_projects\_sort) | the value for sort for name\_with\_namespace | `string` | `"asc"` | no |
| <a name="input_tabulator_theme"></a> [tabulator\_theme](#input\_tabulator\_theme) | the tabulator theme | `string` | `"semantic-ui"` | no |
| <a name="input_template_files_path"></a> [template\_files\_path](#input\_template\_files\_path) | the path of the template files | `string` | `"templates"` | no |
| <a name="input_template_type"></a> [template\_type](#input\_template\_type) | the template type selecting the template subfolder (only 'tabulator' by now) | `string` | `"tabulator"` | no |
| <a name="input_users_order_by"></a> [users\_order\_by](#input\_users\_order\_by) | the value for order\_by in resource gitlab\_users | `string` | `"name"` | no |
| <a name="input_users_sort"></a> [users\_sort](#input\_users\_sort) | the value for sort in resource gitlab\_users | `string` | `"asc"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_groups_html"></a> [groups\_html](#output\_groups\_html) | n/a |
| <a name="output_projects_html"></a> [projects\_html](#output\_projects\_html) | n/a |
| <a name="output_users_html"></a> [users\_html](#output\_users\_html) | n/a |
<!-- END_TF_DOCS -->
