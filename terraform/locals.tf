locals {

  account_id = data.aws_caller_identity.this.account_id

  docker_dynamic_site_path      = "../dynamic-website"
  docker_dynamic_site_repo_name = module.ecr["noor_k8s_tutorial_repo"].repository_name

  environment        = replace(var.environment, "_", "-")

  # Generate a timestamp in YYYYMMDD-HHMMSS format
  timestamp_tag = replace(timestamp(), ":", "-")

}
