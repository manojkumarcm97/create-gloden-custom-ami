source "amazon-ebs" "linux_ami" {
  region        = var.region
  instance_type = var.instance_type

  source_ami    = data.amazon-ami.latest_amzn2.id

  ssh_username = "ec2-user"
  ami_name     = local.final_ami_name

  # EBS configuration
  launch_block_device_mappings {
    device_name           = "/dev/xvda"
    volume_size           = 10
    volume_type           = "gp3"
    delete_on_termination = true
  }
}