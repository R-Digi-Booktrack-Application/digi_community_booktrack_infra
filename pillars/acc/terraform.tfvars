cluster_name       = "eks-acceptance"
kubernetes_version = "1.30"

node_group_name = "node-acceptance"

desired_size = 2
max_size     = 3
min_size     = 1

pillar_name   = "devops_acceptance"
customer_name = "acme"
file_name     = "eks"

eks_addons = {
  "vpc-cni" = {
    addon_version = "v1.18.1-eksbuild.1"
  }

  "coredns" = {
    addon_version = "v1.11.1-eksbuild.4"
  }

  "kube-proxy" = {
    addon_version = "v1.29.0-eksbuild.1"
  }

  "aws-ebs-csi-driver" = {
    addon_version = "v1.31.0-eksbuild.1"
  }
}