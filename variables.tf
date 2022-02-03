#General Google Variables
variable "project_id" {
  description = "Project Id"
}

variable "location" {
  description = "Project Location"
}

variable "region" {
  description = "Project Region"
}

#GKE
variable "gke_num_nodes" {
  default = 2
  description = "Number of GKE Nodes"
}

variable "machine_type" {
  type = string
  default = "n1-standard-1"
}

#GCS
variable "bucket_name" {
  type        = string
  description = "GCS Bucket Name"
}