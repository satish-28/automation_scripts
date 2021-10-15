resource "aws_instance" "example1" {
  ami                  = "${var.ami}"
  instance_type        = "${var.instance_type}"
  key_name             = "instance_key"
  subnet_id            = aws_subnet.first.id
  security_groups      = [aws_security_group.test_sg.id]
  associate_public_ip_address = true
  iam_instance_profile = "${aws_iam_instance_profile.ec2_profile.name}"
  user_data = "${file("install_apache.sh")}"
}