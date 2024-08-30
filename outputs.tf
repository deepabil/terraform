output "vpc_id" {
  description = "The VPC ID"
  value       = module.vpc.vpc_id
}

output "ec2_instance_id" {
  description = "The EC2 instance ID"
  value       = module.ec2.instance_id
}

output "s3_bucket_name" {
  description = "The S3 bucket name"
  value       = module.s3.bucket_name
}
