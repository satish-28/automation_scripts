// Custom Security group for incoming and outgoing traffic
resource "aws_security_group" "test_sg" {
  name        = "test_sg"
  description = "Allow https inbound traffic"
  vpc_id      = "${var.vpc_id}"
  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = "${var.vpc_cidr}"
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "test_sg"
  }
}