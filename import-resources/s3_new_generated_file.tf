# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "BUCKET_NAMExxx"
resource "aws_s3_bucket" "my_bucket" {
  bucket              = "BUCKET_NAMExxx"
  bucket_prefix       = null
  force_destroy       = null
  object_lock_enabled = false
  tags                = {Name = "import exisitng bucket", DOESITWORK="HELLYEAH"} 
  tags_all            = {}
}
