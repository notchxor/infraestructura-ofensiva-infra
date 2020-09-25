## Ansible job for provisioning ubuntu instances

This repository contains ansible roles to create a apache server with certbot and execute a socat script

### Usage

``` 
ansible-playbook playbook.yml -i [server-name],
```

### Roles

- setup: update and install common tools
- adduser: add user from env $USER and copy /home/$USER/.ssh/id_rsa.pub keyfiles
- docker_installer: install docker
- apache: install and configure a simple apache server. change roles/apache/files for custom server options
- certbot: install certbot and create renew cronjob
- socat_scrip: execute socat script, check on roles/socat_script/vars/main.yml
