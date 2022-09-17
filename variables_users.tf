variable "users_order_by" {
  description = "the value for order_by in resource gitlab_users"
  type        = string
  default     = "name"
}

variable "users_sort" {
  description = "the value for sort in resource gitlab_users"
  type        = string
  default     = "asc"
}
