variable "template_type" {
  description = "the template type selecting the template subfolder (only 'tabulator' by now)"
  type        = string
  default     = "tabulator"
}

variable "tabulator_theme" {
  description = "the tabulator theme"
  type        = string
  default     = "semantic-ui"
}

variable "html_font_family" {
  description = "the font family for html"
  type        = string
  default     = "sans-serif"
}