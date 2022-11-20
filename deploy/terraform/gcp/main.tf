terraform {
  backend "gcs" {
    prefix  = "terraform/state"
  }
}

module "global_infra" {
  source = "./global"
  PROJECT_ID = var.PROJECT_ID
  LOCATION = var.LOCATION
  ARTIFACT_REPOSITORY = var.ARTIFACT_REPOSITORY
}

module "services" {
  source = "./modules/services"
  PROJECT_ID = var.PROJECT_ID
}