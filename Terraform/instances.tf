resource "aws_instance" "nodejsapp" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = var.nodejsapp_instance_type
  key_name      = aws_key_pair.nodejs.key_name
  security_groups = [aws_security_group.nodejsapp_sg.name]

  tags = {
    Name = "nodejsapp"
  }
}

resource "aws_instance" "jenkins" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = var.jenkins_instance_type
  key_name      = aws_key_pair.jenkins.key_name
  security_groups = [aws_security_group.jenkins_sg.name]

  tags = {
    Name = "jenkins"
  }
}

resource "aws_instance" "monitoring" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = var.monitoring_instance_type
  key_name      = aws_key_pair.jenkins.key_name
  security_groups = [aws_security_group.monitoring_sg.name]

  tags = {
    Name = "monitoring"
  }
}
