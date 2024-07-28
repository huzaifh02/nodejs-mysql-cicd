terraform {
  backend "s3" {
    bucket = "teraa-app-state"
    key    = "terraform/backend"
    region = "ap-south-1"
  }
}