# Do not use Consul -- even if a Consul agent is found by accident.
consul {
  auth             = "no:consul"
  auto_advertise   = false
  client_auto_join = false
  server_auto_join = false
}
