provider "aws" {
  region                   = var.REGION
  max_retries              = 10
  skip_metadata_api_check  = true
}

