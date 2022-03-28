listener "tcp" {
  address       = "0.0.0.0:8200"
  tls_disable = 1
}

storage "raft" {
  path = "/opt/raft/data"
  node_id = "NODE_NAME"
  performance_multiplier = "1"
}

telemetry {
  dogstatsd_addr = "BIND_IP:8125"
  enable_hostname_label = true
  prometheus_retention_time = "0h"
}

cluster_name = "vtl"
cluster_addr = "https://BIND_IP:8201"
api_addr = "http://BIND_IP:8200"
ui = true

license_path = "/etc/vault.d/vault.hclic"