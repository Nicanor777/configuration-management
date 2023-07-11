## Ansible Instrumentation
* Create a directory for the project -> mkdir CONFIGURATION-MANAGEMENT
* cd CONFIGURATION-MANAGEMENT

## Disable SSH host keys checking
* Create hosts file with the IP addresses of the client, backend virtual machines on GCP. File is under inventory.ini
* Create ansible.cfg file
* Disable host key checking by typing host_key_checking = False in the file

## Provision the servers
* Create a playbook.yaml that will clone the repo and run the commands that will fire up the application.

## Create the virtual servers
* Create the .tf file that provisions the VMs on GCP and use debian-cloud/debian-11 as the base boot disk
* Also create ssh-keys locally and save the public key on the project file on GCP VM to allow access. This is under metadata section.
* Run terraform init, plan then apply to automatically provision the VMs, and starts the ansbile playbook. Once done, the output will be indicated with the IP that you can access the online app.