locals {
  ami_prefix = "packer-ansible"

  final_ami_name = "${local.ami_prefix}-${formatdate("YYYYMMDDhhmm", timestamp())}"
}