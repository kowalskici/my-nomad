data_dir = "/opt/nomad"
log_level = "DEBUG"
enable_debug = true
bind_addr = "0.0.0.0"
disable_update_check = true

# Ensure agents leave the cluster gracefully on SIGINT/SIGTERM. If an agent
# does not leave gracefully the cluster state needs to be cleaned up via
# https://www.nomadproject.io/docs/commands/server-force-leave.html before the
# agent can rejoin.
leave_on_interrupt = true
leave_on_terminate = true
