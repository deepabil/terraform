variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "data.aws_ssm_parameter.latest_ami.value" # Default Amazon Linux 2 AMI
}

variable "subnet_id" {
  description = "Subnet ID for the instance"
}


variable "security_group_id" {
  description = "Security group ID"
}
