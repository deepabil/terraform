# Fetch the latest Amazon Linux 2 AMI ID using AWS Systems Manager Parameter Store
data "aws_ssm_parameter" "latest_ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

resource "aws_instance" "test_instance" {
  ami                    = data.aws_ssm_parameter.latest_ami.value  # Use the fetched AMI ID here
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  security_groups = [var.security_group_id]


  tags = {
    Name = "Terraform-EC2"
  }
}
