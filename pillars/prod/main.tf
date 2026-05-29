provider "aws" {
  region = "us-east-1"
}

module "eks" {
  source = "../../modules/eks"

  cluster_name       = "${var.cluster_name}-${var.app_version}"
  node_group_name    = "${var.node_group_name}-${var.app_version}"
  kubernetes_version = var.kubernetes_version

  desired_size = var.desired_size
  max_size     = var.max_size
  min_size     = var.min_size

  pillar_name   = var.pillar_name
  customer_name = var.customer_name
  file_name     = var.file_name
}