source "amazon-ebs" "linux_ami" {
  region        = var.region
  instance_type = var.instance_type

  # Tags applied to the AMI and the resulting Snapshots
  tags = {
    Name        = "Golden-Linux-Server"
    Environment = "Dev"
    Project     = "Infrastructure-Automation"
    Created-By  = "Packer"
  }

  # Tags applied to the temporary EC2 instance while it's building
  run_tags = {
    Name = "Packer-Builder-Temporary"
  }

  source_ami    = data.amazon-ami.latest_amzn2.id
  

  ssh_username = "ec2-user"
  ami_name     = local.final_ami_name
}