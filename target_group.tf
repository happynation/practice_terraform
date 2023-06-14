resource "aws_lb_target_group" "my_tg" {
  name     = "my-tg"
  target_type = "instance"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id
  
  health_check {
    path = "/"
    port = 80
    healthy_threshold = 2
    unhealthy_threshold = 2
    timeout = 3
    interval = 300
    matcher = "200"  # has to be HTTP 200 or fails
  }
}