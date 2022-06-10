terraform {
    required_version = "> 1.0"
    backend "local" {}
    required_providers {
        google = {
            source = "hashicorp/google"
        }
    }
}


provider "google" {
    project = var.project
    region = var.region
    zone = ""
}

# Data Lake Bucket
resource "google_storage_bucket" "data-lake-bucket" {
    name    = "${local.data-lake-bucket}_${var.project}"
    location = var.region
    force_destroy = true
}

resource "google_bigquery_dataset" "dataset" {
    dataset_id = var.BQ_DATASET 
    project    = var.project
    location   = var.region
}

