provider "aws" {
    region = "{var.s3_regions}"
}
terraform {
    required_version = "> 0.12"
}