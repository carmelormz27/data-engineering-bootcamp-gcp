module "vpc" {
  source      = "./modules/vpc"
  project_id  = var.project_id
}

module "gke" {
  source = "./modules/gke"

  project_id    = var.project_id
  cluster_name  = "airflow-gke-data-bootcamp"
  location      = var.location
  vpc_id        = module.vpc.vpc
  subnet_id     = module.vpc.private_subnets[0]
  gke_num_nodes = var.gke_num_nodes
  machine_type  = var.machine_type
}

module "gcs" {
  source = "./modules/gcs"

  bucket_name = var.bucket_name
  location    = var.region
  project_id  = var.project_id

}