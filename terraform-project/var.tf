variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
   description = "AWS region"
  type        = string
  default     = "ap-south-1"
}
variable "ami" { 
  default     = "ami-0a23ccb2cdd9286bb"
  
}
variable "instance_type" {
  default     = "t2.micro"
}

/*variable "azs" {
	type = "list"
	default = ["us-east-1a", "us-east-1b"]
}*/
