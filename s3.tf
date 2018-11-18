resource "aws_s3_bucket" "mainbucket" {
    bucket = "${var.s3_bucket_name}"
    acl = "private"
    tags = {
        env = "${lookup(var.s3_tags, "environment")}"
    }
    region = "${var.s3_regions[1]}"
    versioning = {
        enabled = true
    }
    lifecycle_rule = { 
        id = "state"
        prefix = "state/"
        enabled = true
    }
    noncurrent_version_expiration {
        days = 90
    }
}
