variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "Vpc Cidr"
}
variable "vpc_name" {
  type        = string
  default     = "surajvpc"
  description = "VPC name"
}
variable "subnet1_cidr" {
  type        = string
  default     = "10.0.1.0/24"
  description = "subnet1 Cidr"
}
variable "subnet2_cidr" {
  type        = string
  default     = "10.0.2.0/24"
  description = "subnet2 Cidr"
}
variable "subnet1_name" {
  type        = string
  default     = "First_subnet"
  description = "subnet1 name"
}
variable "subnet2_name" {
  type        = string
  default     = "second_subnet"
  description = "subnet2 name"
}
variable "rtcb" {
  type        = string
  default     = "0.0.0.0/0"
  description = "route table CICDR Block"
}
