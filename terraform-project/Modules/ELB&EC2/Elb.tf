resource "aws_elb" "test-elb" {
  name            = "test-elb"
  subnets         = [aws_subnet.second.id]
  security_groups = [aws_security_group.test_sg.id]
  availability_zones = ["ap-south-1a", "ap-south-1b"] 

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 443
    lb_protocol       = "http"
  }
  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/index.html"
    interval            = 30
  }
  instances                   = [aws_instance.example1.id]
 cross_zone_load_balancing   = true



  tags = {
    Name = "test_elb"
  }
}
