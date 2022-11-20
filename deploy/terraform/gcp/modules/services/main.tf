terraform {
 backend "gcs" {
   prefix  = "terraform/state"
 }
}

resource "google_storage_bucket" "app_artifacts" {
  force_destroy               = false
  location                    = "US"
  name                        = "artifacts.${var.PROJECT_ID}.appspot.com"
  project                     = var.PROJECT_ID
  public_access_prevention    = "inherited"
  storage_class               = "STANDARD"
  default_event_based_hold    = false
  requester_pays              = false
  labels                      = local.LABELS

  versioning {
    enabled = false
  }

  timeouts {}
}


locals {
  LABELS = {
    "environment" = var.ENVIRONMENT
    "project" = var.PROJECT_ID
  }
}