resource "google_compute_firewall" "firewall" {
  name    = "firewall"
  network = "default"  # Remplacez par le nom de votre réseau

  allow {
    protocol = "tcp"
     ports    = [80,"9255","9266","9090","3000","9093","27017","8080","6443", "2379-2380","10250", "10251", "10252", "30000-32767"]
  }

  source_ranges = ["0.0.0.0/0"]  
  direction     = "INGRESS"
  disabled      = false
  priority      = 60000
}