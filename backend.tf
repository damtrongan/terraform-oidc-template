terraform {
  backend "s3" {
    bucket         = "andt-learning"
    key            = "github-oidc-practice/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
  }
}
