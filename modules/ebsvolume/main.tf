variable "size" {}

resource "aws_ebs_volume" "ebs_volume" {
  size = var.size

  tags = {
    Name = "EBS Volume"
  }
}