resource "null_resource" "set_github_secrets" {
  provisioner "local-exec" {
    command = <<EOT
      gh secret set AWS_ACCOUNT_ID --body="$(terraform output -raw aws_account_id)"
      gh secret set AWS_REGION --body="$(terraform output -raw aws_region)"
      gh secret set ECR_REPOSITORY --body="$(terraform output -raw ecr_repo_name)"
    EOT
  }

  depends_on = [ module.ecr ]
}
