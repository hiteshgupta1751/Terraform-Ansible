resource "aws_instance" "web1" {
  ami                    = "ami-03035978b5aeb1274"
  instance_type          = "t3.micro"
  count = 2
  availability_zone      = "eu-north-1a"
  vpc_security_group_ids = [aws_security_group.mysg.id]
  key_name               = "id_rsa"

  tags = {
    Name = "web_Instance_1"
  }

  provisioner "local-exec" {
    command = "echo ${aws_instance.web1.public_ip} "
  }
  provisioner "local-exec" {
    command = "sleep 10"
  }
  provisioner "local-exec" {
    command = "ansible all -m ping"
  }
  provisioner "local-exec" {
    command = "ansible-playbook /root/terraform/web.yml"
  }
}



