resource "aws_instance" "web1" {
  ami                    = "ami-03035978b5aeb1274"
  instance_type          = "t3.micro"
  availability_zone      = "eu-north-1a"
  vpc_security_group_ids = [aws_security_group.mysg.id]
  key_name               = "id_rsa"

  tags = {
    Name = "web_Instance_1"
  }

  provisioner "local-exec" {
    command = "echo ${aws_instance.web1.public_ip} new_user=FIRST >> /root/terraform/inventory"
  }
}

resource "aws_instance" "web2" {
  ami                    = "ami-03035978b5aeb1274"
  instance_type          = "t3.micro"
  availability_zone      = "eu-north-1a"
  vpc_security_group_ids = [aws_security_group.mysg.id]
  key_name               = "id_rsa"

  tags = {
    Name = "web_Instance_2"
  }
  provisioner "local-exec" {
    command = "echo ${aws_instance.web2.public_ip} new_user=SECOND >> /root/terraform/inventory"
  }

}
