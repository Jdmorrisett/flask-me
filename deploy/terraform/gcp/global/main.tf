terraform {
 backend "gcs" {
   prefix  = "terraform/state"
 }
}

data "google_compute_default_service_account" "service_account" {
  project = var.PROJECT_ID
}

resource "google_artifact_registry_repository" "artifact_repo" {
  format        = "DOCKER"
  location      = var.LOCATION
  project       = var.PROJECT_ID
  repository_id = var.ARTIFACT_REPOSITORY
  labels        = local.LABELS
}

# resource "google_storage_bucket" "app_artifacts" {
#   force_destroy               = false
#   location                    = "US"
#   name                        = "artifacts.${var.PROJECT_ID}.appspot.com"
#   project                     = var.PROJECT_ID
#   public_access_prevention    = "inherited"
#   storage_class               = "STANDARD"
#   default_event_based_hold    = false
#   requester_pays              = false
#   labels                      = local.LABELS

#   versioning {
#     enabled = false
#   }

#   timeouts {}
# }

locals {
  LABELS = {
    "environment" = var.ENVIRONMENT
    "project" = var.PROJECT_ID
  }
}