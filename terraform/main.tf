provider "proxmox" {
  pm_api_url      = "var.pm_api_url
  pm_user         = "var.pm_user"
  pm_password     = var.pm_password
  pm_tls_insecure = true
}

resource "proxmox_vm_qemu" "my_vm" {
  name        = "my-vm"
  target_node = "pve"
  clone       = "ubuntu-template"
  storage     = "local-lvm"
  cores       = 2
  memory      = 2048
}

