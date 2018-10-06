resource "aws_security_group" "dmitry_access" {
  name        = "dmitry_access"
  description = "Allow inbound SSH traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "dmitry_instance"
  }
}
