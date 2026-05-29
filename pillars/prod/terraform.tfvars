cluster_name       = "eks-production"
kubernetes_version = "1.29"

node_group_name = "node-production"

desired_size = 2
max_size     = 3
min_size     = 1

pillar_name   = "devops_production"
customer_name = "acme"
file_name     = "eks"

version = "v1.0.0"