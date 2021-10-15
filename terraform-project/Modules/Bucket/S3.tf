resource "aws_s3_bucket" "surajgaikwad00011" {
  bucket = "surajgaikwad00011"
  acl    = "private"

  tags = {
    Name = "Testbucket"

  }
  versioning {
    enabled = true
  }
}
