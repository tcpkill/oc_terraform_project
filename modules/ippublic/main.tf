variable "security_groups" {}

resource "aws_eip" "public_ip" {
  vpc      = true
  tags = {
    Name = "Public IP"
  }
}