terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.53, < 4.75.0"
    }

    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 3.53, < 5.0"
    }

    time = {
      source  = "hashicorp/time"
      version = ">= 0.9"
    }

    random = {
      source  = "hashicorp/random"
      version = ">= 2.2"
    }
  }

  provider_meta "google" {
    module_name = "blueprints/terraform/dynamic-javascript-webapp/v0.0.1"
  }
}

provider "google" {
  # credentials = file("~/gcp-service-account-keys/gcpnerd-88feed846702.json")
  # credentials = file("~/gcp-service-account-keys/gcpnerd-6b22dcf823dd.json")
  credentials = file("~/gcp-service-account-keys/gcpnerd-a138acf92c7b.json")
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}
