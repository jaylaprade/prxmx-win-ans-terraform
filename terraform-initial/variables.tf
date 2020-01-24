variable "domain_name" {
  type        = string
  default     = "domain.com"
  description = "DNS Domain"
}

variable "dns_server" {
  type        = string
  description = "The DNS Server to use."
  default     = "192.168.1.1"
}

variable "resource_pool" {
  type        = string
  default     = "zfspool"
  description = "A logical group of containers and VMs "
}

variable "template_name" {
  type        = string
  default     = "2019DC-tpl"
  description = "The template to clone from. Refer to Create Template.sh for creating a template."
}

variable "memory" {
  type        = number
  description = "The RAM in MB."
  default     = 2048
}

variable "num_cores" {
  type        = number
  description = "Number of cores per socket"
  default     = 2
}

variable "num_sockets" {
  type        = number
  description = "Number of sockets"
  default     = "1"
}

variable "vm_count" {
  type        = string
  description = "Number of virtual machines to create"
  default     = 1 
}

variable "datastore" {
  type        = string
  description = "Storage pool where virtual machines will live."
  default     = "local-zfs"
}

variable "qemu_agent" {
  type        = number
  description = "Whether the qemu agent is running 1 = on, 0 = off"
  default     = 0 
}

variable "disk_format" {
  type        = string
  description = "The virtual disk format. raw, qcow2, and vmdk"
  default     = "raw"
}

variable "disk_size" {
  type        = number
  description = "The main disk size in GB"
  default     = 40
}

variable "ssh_public_key" {
  type        = string
  description = "The ssh public key to use for auth."
  default     = "~/.ssh/id_rsa.pub"
}

variable "vm_name_prefix" {
  type        = string
  description = "The name of the virtual machine without count."
  default     = "example-vm"
}

variable "network_bridge" {
  type        = string
  description = "The bridge to attach the networking too."
  default     = "vmbr0"
}

variable "target_node" {
  type        = string
  description = "The node to deploy virtual machines to."
  default     = "192.168.1.25"
}

