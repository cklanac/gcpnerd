terraform {
  required_version = ">= 0.14"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.50"
    }
  }
}

provider "google" {
  credentials = file("~/gcp-service-account-keys/gcpnerd-88feed846702.json")
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}
