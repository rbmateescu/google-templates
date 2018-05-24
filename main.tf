
provider "google" {
}

module "tangerine_project" {
  source = "git::https://github.com/rbmateescu?ref=1.0//google-templates/modules/project"
  project_name = "${var.project_name}"
  project_id = "${var.project_id}"
  org_id = "${var.org_id}"
}
