
# Enable APIs for the project
module "project_services" {
  source                      = "terraform-google-modules/project-factory/google//modules/project_services"
  version                     = "~> 14.4"

  project_id                  = var.project_id
  # disable_services_on_destroy = false
  # disable_dependent_services  = false
  # enable_apis                 = true

  activate_apis = [
    "cloudasset.googleapis.com",
    "cloudbuild.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "compute.googleapis.com",
    "firestore.googleapis.com",
    "iam.googleapis.com",
    "run.googleapis.com",
    "secretmanager.googleapis.com",
    "serviceusage.googleapis.com",
    "storage.googleapis.com",
    "artifactregistry.googleapis.com"
  ]
}
