resource "aws_instance" "app_server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.honest_ec2_sg.id]
  user_data              = filebase64("userdata.sh")

  tags = {
    Name = "honest-app-${var.enviroment}"
  }
}
