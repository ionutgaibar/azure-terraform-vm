variable "vm_count" {
  description = "Number of VMs"
  type        = number
}

variable "vm_size" {
  description = "Size of the VM"
  type        = string
}

variable "vm_image" {
  description = "Ubuntu version"
  type        = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type      = string
  sensitive = true
}

variable "location" {
  type    = string
  default = "East US"
}