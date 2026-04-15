build{
    sources = [
        "source.amazon-ebs.linux_ami"
    ]
    
    provisioner "shell" {
        execute_command = "sudo -E bash '{{ .Path }}'"
        script          = "../script/install_ansible.sh"
    }
    provisioner "ansible-local" {
        playbook_dir = "../ansible"
        playbook_file = "../ansible/playbook.yml"
    }
}