
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "data.aws_ssm_parameter.latest_ami.value" # Default Amazon Linux 2 AMI
}

variable "instance_type" {
  description = "Type of instance to create"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet in which to launch the instance"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group to associate with the instance"
  type        = string
}
