
provider "google" {
}

module "tangerine_instance" {
  source = "git::https://github.com/rbmateescu/google-templates?ref=1.1//modules/instance"
  unique_resource_name = "${var.unique_resource_name}"
  machine_type = "${var.machine_type}"
  boot_disk = "${var.boot_disk}"
  zone = "${var.zone}"
  public_ssh_key = "${var.public_ssh_key}"
}
