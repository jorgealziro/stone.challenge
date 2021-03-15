data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  associate_public_ip_address = true
  vpc_security_group_ids = [var.sg_id]
  key_name      = var.key_name
  subnet_id = var.subnet

  connection {
    host = self.public_ip
    type        = "ssh"
    user        = "ubuntu"
    private_key = var.priv_key
  }

  provisioner "remote-exec" {
    inline = [
      "echo eae mondo"
    ]
  }



  tags = {
    Name = var.ec2_name
  }
}