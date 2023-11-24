terraform {
  required_version = ">= 0.15"
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 3.20"
    }
  }
}