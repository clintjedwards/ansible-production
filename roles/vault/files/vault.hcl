ui = true
default_lease_ttl = "175200h"
max_lease_ttl = "175200h"

storage "file" {
    path = "/opt/vault/data"
}

listener "tcp" {
    address = "0.0.0.0:8200"
    tls_cert_file = "/opt/vault/tls/tls.crt"
    tls_key_file = "/opt/vault/tls/tls.key"
}
