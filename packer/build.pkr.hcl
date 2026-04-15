build{
    sources = [
        "source.amazon-ebs.linux_ami"
    ]
    
    provisioner "shell" {
        execute_command = "sudo -E bash '{{ .Path }}'"
        script          = "../scripts/install_ansible.sh"
    }
    provisioner "ansible-local" {
        play_book_dir = "./ansible"
        playbook_file = "./ansible/playbook.yml"
    }
}