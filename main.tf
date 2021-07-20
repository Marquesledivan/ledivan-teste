
provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source = "./terraform-module"
  name   = "ec2_name"
}

output "ids" {
  description = "List of IDs of instances"
  value       = module.ec2.ip_address
}
