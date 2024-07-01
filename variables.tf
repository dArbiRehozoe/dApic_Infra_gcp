variable "gcp_project" {
  type        = string
  default     = "elevated-apex-403206"
  description = "The GCP project to deploy the runner into."
}
variable "gcp_zone" {
  type        = string
  default     = "us-east1-b"
  description = "The GCP zone to deploy the runner into."
}


variable "gcp_region" {
  type        = string
  default     = "us-east1"
  description = "The GCP region to deploy the runner into."
}
variable "ci_runner_instance_type" {
  type        = string
  default     = "n1-standard-1"
}

variable "image" {
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "hostnamenodemaster" {
  type        = string
  default     = "nodemaster.darbi.com"
}
variable "hostnamejenkins" {
  type        = string
  default     = "jenkins.darbi.com"
}
variable "hostnamemongodb" {
  type        = string
  default     = "mongodb.darbi.com"
}
variable "hostnamenodeworker" {
  type        = string
  default     = "nodeworker.darbi.com"
}
variable "hostnameprometheus" {
  type        = string
  default     = "prometheus.darbi.com"
}
variable "hostnamegrafana" {
  type        = string
  default     = "grafana.darbi.com"
}
variable "instance_count" {
  default = 2
}
variable "base_instance_name" {
  default = "nodeworker"
}
