
provider "google" {
}

data "external" "project_id" {
  program = ["/bin/bash", "${path.module}/scripts/get_project_id.sh"]
}