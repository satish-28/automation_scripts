output "vpc_id" {
  value       = "${aws_vpc.surajvpc.id}"
  
}
output "vpc_CIDR" {
  value       = "${aws_vpc.surajvpc.cidr_block}"
  
}
