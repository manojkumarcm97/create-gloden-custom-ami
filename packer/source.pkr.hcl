source "amazon-ebs" "linux_ami" {
  region        = var.region
  instance_type = var.instance_type

  source_ami    = data.amazon-ami.latest_amzn2.id
  

  ssh_username = "ec2-user"
  ami_name     = local.final_ami_name

  # It needs the policy: CloudWatchAgentServerPolicy
  iam_instance_profile = "PackerCloudWatchRole"
}