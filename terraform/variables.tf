variable "pm_api_url" {
  description = "Proxmox API endpoint"
  type        = string
}

variable "pm_user" {
  description = "Proxmox username"
  type        = string
}

variable "pm_password" {
  description = "Proxmox password or API token secret"
  type        = string
  sensitive   = true
}

