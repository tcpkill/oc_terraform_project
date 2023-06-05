provider "aws" {
  region = "us-east-1" 
}

module "ec2_instance" {
  source           = "./modules/ec2_instance"
  ami              = "ami-0729e439b6769d6ab"
  instance_type    = "t2.micro"
  volume_size      = 20
  public_ip        = true
  security_groups  = sg-0e85403f569e24852
}


module "ebs_volume" {
  source           = "./modules/ebs_volume"
  size             = 20
}


module "public_ip" {
  source           = "./modules/public_ip"
  security_groups  = sg-0e85403f569e24852
}

module "security_group" {
  source           = "./modules/security_group"
}


provisioner "remote-exec" {
  inline = [
    "sudo apt-get update",
    "sudo apt-get install -y nginx",
    "echo ${module.ec2_instance.public_ip} > ip_ec2-projet.txt"
  ]

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/.ssh/id_rsa")
    host        = module.ec2_instance.public_ip
  }
}