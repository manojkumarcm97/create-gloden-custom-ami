data "amazon-ami" "latest_amzn2" {
  filters = {
    name                = "amzn2-ami-hvm-*"
    root-device-type    = "ebs"
    virtualization-type = "hvm"
  }

  owners      = ["amazon"]
  most_recent = true
}