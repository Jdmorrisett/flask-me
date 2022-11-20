variable "PROJECT_ID" {
    type = string
    description = "The GCP Project ID to deploy to"
    default = "flask-me-367906"
    # nullable = false
}

variable "ACCOUNT_ID" {
    type = string
    description = "The GCP Account ID to deploy to"
    default = "133412408461-compute"
    # nullable = false
}

variable "ARTIFACT_REPOSITORY" {
    type = string
    description = "The GCP Artifcat Repository to upload the docker image to"
    default = "portfolio_docker"
    # nullable = false
}

variable "LOCATION" {
    type = string
    description = "The GCP location/region to deploy to"
    default = "us-east1"
    # nullable = false
}