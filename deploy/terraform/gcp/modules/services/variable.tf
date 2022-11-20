variable "PROJECT_ID" {
    type = string
    description = "The GCP Project ID to deploy to"
    # nullable = false
}

variable "ENVIRONMENT" {
    type = string
    description = "The environment to deploy to"
    default = "dev"
}