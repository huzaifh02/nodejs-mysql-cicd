resource "aws_key_pair" "jenkins" {
  key_name   = "jenkins-key"
  public_key = file("~/.ssh/jenkins.pub")
}

resource "aws_key_pair" "nodejs" {
  key_name   = "nodejsapp-key"
  public_key = file("~/.ssh/nodejsapp.pub")
}