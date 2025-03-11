terraform {
  backend "s3" {
    bucket = "gusribm-526554803206-terraform-backend"
    key    = "proj-cloud-aws-analytics-raw-data-zone.tfstate"
    region = "us-east-1"
  }
}