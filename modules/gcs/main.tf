resource "google_storage_bucket" "data-bootcamp-airflow-bucket" {
  name      = var.bucket_name
  location  = var.location
  project   = var.project_id
}