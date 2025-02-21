variable "environment" {
  description = "Environment Name"
  type        = string

  default = "dev"
}

variable "region" {
  description = "AWS Region"
  type        = string

  default = null 
}

variable "ecr_repository" {
  description = "ECR Repository"
  type        = string

  default = null
}

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

variable "vpc_id" {
  description = "VPC ID"
  type        = string

  default = null
}

variable "private_subnet_id" {
  description = "Private Subnet ID"
  type        = string

  default = null
}