provider "aws" {
	
	region = var.aws_region
}

resource "random_id" "tf_bucket_id" {
	
	byte_length = 2 
}

resource "aws_s3_bucket" "tf_code" {
	
	bucket = var.project_name-random_id.tf_bucket_id.id
	acl = "private"

	froce_destroy = true

	tags {

		Name = "tf_bucket"

	}
}