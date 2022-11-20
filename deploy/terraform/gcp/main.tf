terraform {
 backend "gcs" {
   bucket  = var.TFSTATE_BUCKET
   prefix  = "terraform/state"
 }
}

data "google_compute_default_service_account" "default" {
  project = var.PROJECT_ID
}

# resource "google_service_account" "service_account" {
#   account_id   = data.google_compute_default_service_account.default.email
#   display_name = "Default compute service account"
#   project      = var.PROJECT_ID
# }

resource "google_artifact_registry_repository" "artifact_repo" {
  format        = "DOCKER"
  location      = var.LOCATION
  project       = var.PROJECT_ID
  repository_id = var.ARTIFACT_REPOSITORY
}

resource "google_storage_bucket" "artifacts_flask_me_367906_appspot_com" {
  force_destroy            = false
  location                 = "US"
  name                     = "artifacts.${var.PROJECT_ID}.appspot.com"
  project                  = var.PROJECT_ID
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}