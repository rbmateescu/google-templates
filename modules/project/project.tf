resource "google_project" "tangerine_project" {
  name          =   "${var.project_name}"
  project_id    =   "${var.project_id}"
}