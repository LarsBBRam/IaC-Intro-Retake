# Outputs
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
