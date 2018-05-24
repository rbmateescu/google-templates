
variable "project_name" {
  descriptiom = "Google cloud project name"
}

variable "project_id" {
  descriptiom = "Google cloud project ID"
}

variable "org_id" {
  descriptiom = "Google cloud organization ID"
}

resource "google_project" "tangerine_project" {
  name          =   "${var.project_name}"
  project_id    =   "${var.project_id}"
  org_id        =   "${var.org_id}"
}