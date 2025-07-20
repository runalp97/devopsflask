output "jenkins_public_ip" {
  description = "Public IP of the Jenkins EC2 instance"
  value       = aws_instance.jenkins.public_ip
}

output "app_public_ip" {
  description = "Public IP of the App EC2 instance"
  value       = aws_instance.app.public_ip
}

output "jenkins_ssh_command" {
  description = "SSH into Jenkins"
  value       = "ssh -i ~/.ssh/kpair1.pem ubuntu@${aws_instance.jenkins.public_ip}"
}

output "app_ssh_command" {
  description = "SSH into App Server"
  value       = "ssh -i ~/.ssh/kpair1.pem ubuntu@${aws_instance.app.public_ip}"
}
