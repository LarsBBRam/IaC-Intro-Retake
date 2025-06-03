# Input variables
variable "hcloud_token" {
  description = "The API token for Hetzner Cloud"
  sensitive   = true
  type        = string
}
