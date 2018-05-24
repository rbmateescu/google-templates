
provider "google" {
}

module "tangerine_project" {
  source = "git::https://github.com/rbmateescu/google-templates?ref=1.0//modules/project"
  project_name = "${var.project_name}"
  project_id = "${var.project_id}"
}
