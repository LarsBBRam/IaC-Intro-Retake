# Meta config
terraform {
    # All the providers in this project
    required_providers {
        # A provider [think datacenter provider]
      hcloud = {
        source = "hetznercloud/hcloud"
        version = "~> 1.45"
      }
    }
}

# Configure the Hetzner Cloud Provider
provider "hcloud"{
    # Your organizations credit account
    token = var.hcloud_token
}

#All the resources
resource "hcloud_server" "my_first_server" {
  name = "my-server1"
  server_type = "cpx21"
  image = "debian-12"
}
resource "hcloud_server" "my_second_server" {
  name = "my-server2"
  server_type = "cpx21"
  image = "debian-12"
}

#input variables
variable "hcloud_token" {
  description = "The API token for Hetzner Cloud"
  sensitive = true
  type = string  
}

#outputs
output "my_first_server" {
  value = {
    ipv4 = hcloud_server.my_first_server.ipv4_address
    ipv6 = hcloud_server.my_first_server.ipv6_address
  }
}
output "my_second_server" {
  value = {
    ipv4 = hcloud_server.my_second_server.ipv4_address
    ipv6 = hcloud_server.my_second_server.ipv6_address
  }
}