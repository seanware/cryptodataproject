locals {
    data-lake-bucket = "crypto_data_lake"
}
variable "project" {
    description = ""
    type = string
    default  = "pipeline-347414"
}

variable "region" {
    description = "Region for GCP resources. Choose as per your location: https://cloud.google.com/about/locations"
    default = "us-central1"
    type = string
}

variable "storage_class" {
    description = "Standard storage class"
    default = "STANDARD"
}

variable "BQ_DATASET" {
    description = "BiqQuery Dataset created from GCS raw data"
    type = string
    default = "cypto_data_all"
}