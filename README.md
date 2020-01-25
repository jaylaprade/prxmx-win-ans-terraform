# prxmx-win-ans-terraform

This will be a complete template to build Windows Templates on Proxmox, deploy them and then configure them using the premise of infrastructure as code (IaC). The idea is that this should be a format to deploy small business infrastructure in a test environment locally on commodity hardware, test it and then use the proof of concept to the same infrastructure to the Cloud. Ideally the same code should make deploying the same infrastructure code to different cloud providers.

## ansible-win-template

This is the code from Clay Shekleton's Ansible Windows Template system reformatted into a more extendable system.

https://github.com/clayshek/ans-pve-win-templ

Currently the limitation with this is that templates need to have secondary software installed (qm-agent, cloudinit-base and Ansible) after the initial template is created. You will need to create a template, then create an new VM based on that template. Then install the correct software. Then create a template based on that. This final template will be the gold image used to deploy from Terraform.

### Why?

Apparent limitations of the autounattend.xml format/Powershell. I cannot get software to install post install via the autattend.xml.

## terraform-initial

This uses the Terraform/Telmate system to deploy a perfect image based on the best Windows 2019 state that I could find. I am sure there are some tweaks to be made which will help performance, but these where the best standards I could find.

## To be done

After this is a set of reference Windows 2019 infrastructure that most small business use. Active Directory, Print Server, File Server and Radius server for example. These will be deployed via Ansible and Powershell DSC.

Additionally there will be a method to export your existing configurations to this environment.

Finally, there should structures to convert your environment to a more Linux based platform.  
