
provider "google" {
}

variable "region_zone" {
  default = "us-central1-f"
}

variable "public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDHZ4niF/AJ/9y+/NCqXAnr+rWYEg9kv1/4uOc0PEQU+HBelUNM7RxthH5VGYPPEm9KuVBhwlO7VQ1Kpo2SrkdjX16YtM1Ozao4DyU7jJNh3PpvzjzPhqWf6lKo1AQ5EX4HBkIGe+G9zc17p6op8ZUniWNMux9zv3jf2F1zuMt/gbLGUmzUOUWU5lIwqEZPfToeJJhdQgpqFTYqfxhvKSkj0HTGOz8UbEkP37TIqx0pjohZjoIgbZDIz1YkfX52MaSEiHg7WdBAZiaJxFa1mAAwL5vZNg80/lSsKa96ga+INw1b0NHeEVVVWWBxy4Vo9n/1NPaYu1A/dYFoF5huEKep developer@radu-orpheus"
}

resource "google_compute_instance" "www" {
  count = 1

  name         = "tf-www-${count.index}"
  machine_type = "f1-micro"
  zone         = "${var.region_zone}"
  tags         = ["www-node"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1404-trusty-v20160602"
    }
  }

  network_interface {
    network = "default"

    access_config {
      # Ephemeral
    }
  }

  metadata {
    ssh-keys = "${var.public_key}"
  }
 

  service_account {
    scopes = ["https://www.googleapis.com/auth/compute.readonly"]
  }
}
