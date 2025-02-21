output "ecr_repository_arn" {
  description = "List of ECR repository URIs"
  value       = module.ecr.repository_arn 
}

output "ecr_repository_uris" {
  description = "List of ECR repository URIs"
  value       = module.ecr.repository_url 
}

output "ecr_repo_name" {
  value = module.ecr.repository_name
}

output "ecr_public_registry_alias" {
  value       = element(split("/", module.ecr.repository_url), 1)
  description = "The AWS public ECR registry alias"
}


output "aws_account_id" {
  value = local.account_id
}

output "aws_region" {
  value = var.region
}



output "docker_img_name" {
  value = local.timestamp_tag
}