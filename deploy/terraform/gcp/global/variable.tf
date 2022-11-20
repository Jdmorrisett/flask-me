variable "PROJECT_ID" {
    type = string
    description = "The GCP Project ID to deploy to"
    # nullable = false
}

variable "ARTIFACT_REPOSITORY" {
    type = string
    description = "The GCP Artifcat Repository to upload the docker image to"
    # nullable = false
}

variable "LOCATION" {
    type = string
    description = "The GCP location/region to deploy to"
    # nullable = false
    default = "us-east1"
}

variable "ENVIRONMENT" {
    type = string
    description = "The environment to deploy to"
    default = "dev"
}