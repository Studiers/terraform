provider "google" {
  credentials = "${file(var.google_credentials_path)}"
}


resource "google_compute_instance" "my-instance" {
  name         = "instance-name"
  machine_type = "f1-micro"
  project = "i-like-dsmproject"
  zone         = "us-west1-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata {
    sshKeys = "ubuntu:${file(var.ssh_public_key_filepath)}"
  }
  
  provisioner "local-exec" {
    command = "echo first"
  }

  provisioner "local-exec" {
    command = "echo second >> test"
  }

  provisioner "local-exec" {
    command = "cat test"
  }
}