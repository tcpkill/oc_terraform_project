variable "ami" {}
variable "instance_type" {}
variable "volume_size" {}
variable "public_ip" {}
variable "security_groups" {}

resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  associate_public_ip_address = var.public_ip

  root_block_device {
    volume_size = var.volume_size
  }

  tags = {
    Name = "EC2 Instance"
  }
}