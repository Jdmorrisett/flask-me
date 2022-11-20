terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.43.1"
    }
  }
}

provider "google" {
  # Configuration options
}

variable "PROJECT_ID" {
    type = string
    # nullable = false
    description = "The GCP Project ID to deploy to"
    default = "flask-me-367906"
}

variable "LOCATION" {
    type = string
    # nullable = false
    description = "The GCP LOCATION to deploy to"
    default = "us-east1"
}

variable "ARTIFACT_REPO" {
    type = string
    # nullable = false
    description = "The GCP Artifact Repo to upload the image to"
    default = "portfolio_docker"
}


resource "google_storage_bucket" "tfstate_bucket" {
  name          = "${var.PROJECT_ID}-bucket-tfstate"
  force_destroy = false
  location      = "US"
  storage_class = "STANDARD"
  project = "${var.PROJECT_ID}"
  versioning {
    enabled = true
  }
}