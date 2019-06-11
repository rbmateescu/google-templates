
provider "google" {
}

resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo $GOOGLE_CREDENTIALS | jq --raw-output .project_id " 
  }
}