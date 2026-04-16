data "amazon-ami" "latest_amzn2" {
  filters = {
    name                = "al2023-ami-2023*-kernel-6.1-x86_64"
    root-device-type    = "ebs"
    virtualization-type = "hvm"
  }

  most_recent = true
  owners      = ["137112412989"] # Official Amazon Owner ID
}