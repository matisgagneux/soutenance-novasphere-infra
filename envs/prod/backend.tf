terraform {
  backend "s3" {
    bucket       = "novasphere-tfstate-589817875759"
    key          = "novasphere/prod/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}