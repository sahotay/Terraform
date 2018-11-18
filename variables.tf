variable "s3_bucket_name" {
    // default     = "mytest-bucketineast-1"
    description = "Name of s3 bucket"
    type        = "string"
}
variable "s3_tags" {
    type = "map"

    default = {
        created_by = "terraform"
        environment = "test"
    }
}

variable "s3_regions" {
    type = "list"
    default = [ "us-east-1", "us-west-2"]
}