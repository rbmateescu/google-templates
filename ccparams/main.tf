
provider "google" {
}

data "external" "project_id" {
  program = ["/bin/bash", "${path.module}/scripts/get_project_id.sh"]
}

resource "null_resource" "create-endpoint" {
  provisioner "local-exec" {
    command = "aws --version "
  }
}