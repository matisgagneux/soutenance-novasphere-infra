data "aws_ami" "al2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

locals {
  instance_profile_name = "LabInstanceProfile"
}

module "web" {
  source = "git::https://github.com/matisgagneux/terraform-aws-webstack.git?ref=v1.0.0"

  project               = var.project
  environment           = var.environment
  vpc_id                = module.vpc.vpc_id
  subnet_ids            = module.vpc.public_subnets
  ami_id                = data.aws_ami.al2023.id
  instance_type         = var.instance_type
  instance_profile_name = local.instance_profile_name
}
