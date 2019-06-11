
provider "google" {
}

resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "jq --raw-output .project_id $GOOGLE_CREDENTIALS" 
  }
}