variable "your_ip_address" {
  default = ""
}
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH"

  ingress {
    description      = "Allow SSH to VMs"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["${var.your_ip_address}"]
  }
  egress {
    description = "Allow all ports in egress"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource "aws_security_group" "allow_ssh-us-east-2" {
  provider = aws.us-east-2
  name        = "allow_ssh"
  description = "Allow SSH"

  ingress {
    description      = "Allow SSH to VMs"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["${var.your_ip_address}"]
  }
  egress {
    description = "Allow all ports in egress"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}