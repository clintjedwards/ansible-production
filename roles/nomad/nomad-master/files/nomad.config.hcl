data_dir      = "/etc/nomad/data"
datacenter    = "home"
enable_syslog = true

consul {
  address = "127.0.0.1:8500"
}

server {
  enabled           = true
  bootstrap_expect  = 1
  node_gc_threshold = "1h"
}

acl {
  enabled = false
}

telemetry {
  disable_hostname           = true
  publish_allocation_metrics = true
  publish_node_metrics       = true
  prometheus_metrics         = true
}
