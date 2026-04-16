build{
    sources = ["source.amazon-ebs.linux_ami"]
    
    provisioner "shell" {
        execute_command = "sudo -E bash '{{ .Path }}'"
        script          = "./script/install.sh"        
    }
    provisioner "ansible-local" {
        playbook_file = "../ansible/playbook.yml"
        playbook_dir  = "../ansible"
        role_paths    = ["../ansible/roles"]
    }
    post-processor "manifest" {
        output = "manifest.json"
    }
}