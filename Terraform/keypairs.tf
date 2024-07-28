resource "aws_key_pair" "jenkins_key" {
  key_name   = "jenkins-key"
  public_key = file("~/.ssh/jenkins.pub")
}

resource "aws_key_pair" "nodejsapp_key" {
  key_name   = "nodejsapp-key"
  public_key = file("~/.ssh/nodejsapp.pub")
}