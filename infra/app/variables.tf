variable "project_id" {
  type        = string
  description = "The project ID to deploy resources to."
}

variable "region" {
  type        = string
  # default     = "us-central1"
  description = "Google Cloud region"
}

variable "zone" {
  type        = string
  # default     = "us-central1-C"
  description = "Google Cloud zone"
}

variable "deployment_name" {
  type        = string
  description = "Identifier for the deployment. Used in some resource names."
  # default     = "dev-journey"
}

# variable "enable_apis" {
#   type        = bool
#   description = "Whether or not to enable underlying apis in this solution."
#   default     = true
# }

variable "initial_run_image" {
  type        = string
  description = "Initial image to deploy to Cloud Run service."
  # default     = "gcr.io/hsa-public/developer-journey/app"
}

variable "labels" {
  type        = map(string)
  description = "A set of key/value label pairs to assign to the resources deployed by this solution."
  default     = {}
}

variable "init_firestore" {
  type        = bool
  description = "Whether or not to initialize a Firestore instance."
  default     = true
}
