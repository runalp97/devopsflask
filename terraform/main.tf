provider "aws" {
  region = var.region
}

resource "aws_instance" "jenkins" {
  ami           = "ami-0f918f7e67a3323f0"
  instance_type = "t2.micro"
  key_name      = var.key_name
  tags          = { Name = "Jenkins-Server" }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > ../ansible/jenkins_ip.txt"
  }
}

resource "aws_instance" "app" {
  ami           = "ami-0f918f7e67a3323f0"
  instance_type = "t2.micro"
  key_name      = var.key_name
  tags          = { Name = "App-Server" }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > ../ansible/app_ip.txt"
  }
}
