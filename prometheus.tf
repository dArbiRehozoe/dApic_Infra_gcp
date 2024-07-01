provider "google" {
  project     = var.gcp_project
  region      = "us-west4"
  alias       = "us-w"
}
resource "google_compute_instance" "prometheus" {
  name                      = "prometheus"
  hostname                  = var.hostnameprometheus
  machine_type              = "e2-standard-2"
  project                   = var.gcp_project
  zone                      = "us-west4-a"

  scheduling {
    preemptible       = true
    automatic_restart = false
  }
 allow_stopping_for_update = true
  boot_disk {
    initialize_params {
      image = var.image
      size  = 50
      type  = "pd-standard"
    }
  }
  labels = {
    environment = "prometheus"
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


