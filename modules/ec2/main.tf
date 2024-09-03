
data "aws_ssm_parameter" "latest_ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

resource "aws_instance" "test_instance" {
  ami                    = data.aws_ssm_parameter.latest_ami.value
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  # Conditionally include security group ID in the list
  vpc_security_group_ids = var.security_group_id != "" ? [var.security_group_id] : []

  tags = {
    Name = "Terraform-EC2"
  }
}
