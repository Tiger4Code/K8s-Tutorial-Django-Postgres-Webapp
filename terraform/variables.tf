variable "environment" {
  description = "Environment Name"
  type        = string

  default = "dev"
}

variable "region" {
  description = "AWS Region"
  type        = string

  default = "us-east-1"
}

variable "ecr_repository" {
  description = "ECR Repository"
  type        = string

  default = "noor_k8s_tutorial_repo"
}

# variable "ecr_repositories" {
#   description = "A list of ECR repository names. The first item in the list represents the repository for the dynamic website image (used for Docker image builds)."
#   type        = map(string)

#   default = {}
# }

variable "eks_cluster_version" {
  description = "Version of kubernetes running on cluster"
  type        = string

  default = null
}

variable "eks_node_instance_type" {
  description = "EC2 instance type for worker nodes"
  type        = string

  default = null
}
