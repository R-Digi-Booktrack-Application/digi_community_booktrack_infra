variable "cluster_name" {
  type        = string
  description = "Base name of the EKS cluster (without version)"
}

variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version for the EKS cluster"
}

variable "node_group_name" {
  type        = string
  description = "Name of the EKS node group"
}

variable "desired_size" {
  type        = number
  description = "Desired number of worker nodes"
}

variable "max_size" {
  type        = number
  description = "Maximum number of worker nodes"
}

variable "min_size" {
  type        = number
  description = "Minimum number of worker nodes"
}

variable "pillar_name" {
  type        = string
  description = "Logical pillar/environment grouping (e.g., devops_dev)"
}

variable "customer_name" {
  type        = string
  description = "Customer or project identifier"
}

variable "file_name" {
  type        = string
  description = "Module or deployment identifier (e.g., eks)"
}

variable "app_version" {
  type        = string
  description = "Application version passed from CI/CD pipeline (do NOT set manually)"
}

variable "eks_addons" {
  description = "Map of EKS addons and their versions"
  type = map(object({
    addon_version = string
  }))

  default = {}
}