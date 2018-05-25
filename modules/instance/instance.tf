// Create a new compute engine resource
resource "google_compute_instance" "default" {
  name         = "${var.unique_resource_name}"
  machine_type = "${var.machine_type}"
  zone         = "${var.zone}"
  boot_disk {
    initialize_params {
      image = "${var.boot_disk}"
    }
  }
  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
  metadata {
    ssh-keys = "${var.public_ssh_key}"
  }
}
