datacenter = "default"
addresses {
    http = "127.0.0.1"
}
advertise {
  http = "127.0.0.1:4646"
}

client {
    enabled = true
    servers = ["nomad-server-1","nomad-server-2","nomad-server-3"]
    node_class = "linux-64bit"
    options = {
        "driver.raw_exec.enable" = "1"
    }

    # an arbitrary value for network speed because they report
    # invalid values in `/sys/class/net/eth0/speed` and `/sbin/ethtool eth0`
    # as expected by Nomad
    network_speed = 10000

    # reserve some memory and cpu for the host processes
    # including Nomad, Docker, filebeat, etc
    reserved {
      # in MB
      memory = 4098
      # in MHz
      cpu = 5800
    }
}
