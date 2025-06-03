# All the resources
resource "hcloud_server" "my_first_server" {
  name        = "my-first-server"
  server_type = "cpx21"
  image       = "debian-12"
}

resource "hcloud_server" "my_second_server" {
  name        = "my-second-server"
  server_type = "cpx21"
  image       = "debian-12"
}
