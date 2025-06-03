# Meta configuration
terraform {
  # All the Providers we have included in this project
  required_providers {
    # A provider (think datacenter provider)
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.45"
    }
  }
}

# Configure the Hetzner Cloud Provider
provider "hcloud" {
  # Your organizations credit account
  token = var.hcloud_token
}
