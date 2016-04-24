# Ubuntu packer templates

## Create image

```bash
read -p 'Enter password: ' -s password
packer build -var 'user=packer' -var "password=$password" ubuntu-16.04-server-amd64.json
```

## Preseed file

Look in http/ for the available preseed files that automate the ubuntu installation

## Packer provisioning scripts

Look in scripts/ for the Packer provisioner shell scripts

## Packer ansible-local playbook

Look in ansible/ for the Packer ansible-local provisioner playbook

