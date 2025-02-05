terraform {
  backend "s3" {
    bucket = "noor-internal-terraform-state"
    key    = "k8s_aws_tutorial/terraform.tfstate"
    region = "us-east-1"

    use_lockfile = true
  }
}