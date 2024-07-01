provider "google" {
  project     = var.gcp_project
  region      = var.gcp_region
  alias       = "us-u"
}
resource "google_compute_instance" "jenkins" {
  name                      = "jenkins"
  hostname                  = var.hostnamejenkins
  machine_type              = "e2-standard-2"
  project                   = var.gcp_project
  zone                      = var.gcp_zone

  scheduling {
    preemptible       = true
    automatic_restart = false
  }
 allow_stopping_for_update = true
  boot_disk {
    initialize_params {
      image = var.image
      size  = 120
      type  = "pd-standard"
    }
  }
  labels = {
    environment = "jenkins"
  }
  metadata = {
    enable-oslogin = "TRUE"
  }
  tags = ["http-server", "https-server", "lb-health-check"]
  network_interface {
    network = "default" 
    access_config {
      // Include this section to give the VM an external ip address
    }
  }

}