terraform {
    backend "s3" {
        bucket = "terraform.github"
        region = "us-east-1"
        dynamodb_table = "terraform.github"
    }
}

resource "null_resource" "atlantist" {
    triggers = {
        test_run = "${var.test_run}"
    }
}
