variable "cluster_name" { type = string }
variable "kubernetes_version" { type = string }
variable "node_group_name" { type = string }

variable "desired_size" { type = number }
variable "max_size" { type = number }
variable "min_size" { type = number }

variable "pillar_name" { type = string }
variable "customer_name" { type = string }
variable "file_name" { type = string }

variable "subnet_ids" {
  type    = list(string)
  default = []
}

variable "security_group_ids" {
  type    = list(string)
  default = []
}

variable "eks_addons" {
  description = "Map of EKS addons and their versions"
  type = map(object({
    addon_version = string
  }))

  default = {}
}