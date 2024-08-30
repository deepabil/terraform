output "vpc_id" {
  description = "The VPC ID"
  value       = aws_vpc.test_vpc.id
}

output "subnet_id" {
  description = "The Subnet ID"
  value       = aws_subnet.test_subnet.id
}

output "security_group_id" {
  description = "The Security Group ID"
  value       = aws_security_group.test_sg.id
}
