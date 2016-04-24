##Introduction

The packer-qemu-templates provides Packer templates for unattended building of
relevant virtual machine images in the qcow2 format for use with KVM.

In addition, Ansible is used to do some post-provision. 


##Status

Currently the project only includes a template for Ubuntu 16.04.


##Usage

###Build qcow2 image
Go into the relevant template directory and run packer build on
the relevant json file.

```bash
$ cd ubuntu
$ packer build ubuntu-16.04-server-amd64.json
```

##Acknowledgements

* [packer-qemu-templates](https://github.com/jakobadam/packer-qemu-templates)
* [packer-images](https://github.com/opentable/packer-images.git)
* [packer-windows](https://github.com/joefitzgerald/packer-windows)
* [box-cutter](https://github.com/boxcutter/)

