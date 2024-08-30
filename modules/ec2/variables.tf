
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "data.aws_ssm_parameter.latest_ami.value" # Default Amazon Linux 2 AMI
}

variable "instance_type" {
  description = "Type of instance to create"
  type        = string
  default     = "t2.micro" 
}
variable "subnet_id" {
  description = "The ID of the subnet in which to launch the instance"
  type        = string
  default     = "default-subnet-id"  # Replace with a default subnet ID or leave empty
}

variable "security_group_id" {
  description = "The ID of the security group to associate with the instance"
  type        = string
  default     = "default-security-group-id"  # Replace with a default security group ID or leave empty
}
