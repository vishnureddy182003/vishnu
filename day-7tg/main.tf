resource "aws_lb_target_group" "back_end" {
  name     = "backend-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "vpc-0bffad8fd9abf5dbf"
  

}

