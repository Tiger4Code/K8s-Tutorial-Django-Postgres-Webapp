resource "null_resource" "set_github_secrets" {
  triggers = {
    always_run = timestamp()  # Forces execution on every apply
  }
  provisioner "local-exec" {
    command = <<EOT
      gh secret set AWS_ACCOUNT_ID --body="$(terraform output -raw aws_account_id)"
      gh secret set AWS_REGION --body="$(terraform output -raw aws_region)"
      gh secret set ECR_REPOSITORY --body="$(terraform output -raw ecr_repo_name)"
      gh secret set DOCKER_IMG_TAG --body="$(terraform output -raw docker_img_name)"
    EOT
  }


  depends_on = [ module.ecr ]
}
