data_dir      = "/etc/nomad/data"
datacenter    = "home"
enable_syslog = true

consul {
  address = "127.0.0.1:8500"
}

client {
  enabled = true
  servers = [
    "nomad-master.clintjedwards.home",
  ]

  max_kill_timeout = "60s"
}

acl {
  enabled = false
}

telemetry {
  disable_hostname           = true
  collection_interval        = "20s"
  publish_allocation_metrics = true
  publish_node_metrics       = true
  prometheus_metrics         = true
}
