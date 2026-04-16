build{
    sources = ["source.amazon-ebs.linux_ami"]
    
    provisioner "shell" {
        execute_command = "sudo -E bash '{{ .Path }}'"
        script          = "./script/install.sh"
    }
    provisioner "ansible-local" {
        playbook_file = "../ansible/playbook.yml"
    }
}