provider "aws" {
    region = "${var.s3_regions}"
}
terraform {
    required_version = "> 0.11"
    backend "s3" {
        bucket = "msigitlabbackup"
        key = "test/backbone"
        region = "us-east-1"
        encrypt = "true"
    }
}