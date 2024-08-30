output "instance_id" {
  description = "The EC2 instance ID"
  value       = aws_instance.test_instance.id
}

output "public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.test_instance.public_ip
}