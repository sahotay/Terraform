resource "aws_s3_bucket" "main" {
    bucket = "my-tf-test-bucket"
    acl = "private"

    tags {
        Name = "My Bucket"
        Environemnt= "TST"
    }
}