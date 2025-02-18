output "ecr_repository_uris" {
  description = "List of ECR repository URIs"
  value       = module.ecr.repository_url 
}

output "aws_account_id" {
  value = local.account_id
}

output "aws_region" {
  value = var.region
}

output "ecr_repo_name" {
  value = module.ecr.repository_name
}


output "docker_img_name" {
  value = local.timestamp_tag
}