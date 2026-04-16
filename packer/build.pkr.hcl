build{
    sources = ["source.amazon-ebs.linux_ami"]
    
    provisioner "shell" {
        execute_command = "sudo -E bash '{{ .Path }}'"
        script          = "./script/install.sh"        
    }
    provisioner "ansible-local" {
        playbook_file = "../ansible/playbook.yml"
        # Tell Packer where to find the command it just installed
        ansible_env_vars = [ "PATH=$PATH:/root/.local/bin" ]
    }
}