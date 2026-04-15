build{
    sources = [
        "source.amazon-ebs.linux_ami"
    ]
    
    provisioner "shell" {
        execute_command = "sudo -E bash '{{ .Path }}'"
        script          = "packer\script\install.sh"
    }
    provisioner "ansible-local" {
        playbook_dir = "../ansible"
        playbook_file = "../ansible/playbook.yml"
    }
}