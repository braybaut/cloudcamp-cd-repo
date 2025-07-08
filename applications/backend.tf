terraform {
  backend "s3" {
    bucket = "tf-state-backend-ew"
    key    = "bray/eks/terraform.tfstate"
    region = "us-east-1"
  }
}
