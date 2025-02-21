provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Environment = "dev"
      Project     = "Noor K8s Deployment on AWS"
      Owner       = "Noor"
    }
  }
}
