provider "akamai" {
  edgerc        = "../../test/edgerc"
  cache_enabled = false
}

resource "akamai_appsec_advanced_settings_logging" "test" {
  config_id = 43253
  logging   = <<-EOF
{
    "allowSampling": true,
    "cookies": {
        "type": "all"
    },
    "customHeaders": {
        "type": "exclude",
        "values": [
            "csdasdad"
        ]
    },
    "standardHeaders": {
        "type": "all",
        "values": [
            "Accept"
        ]
    }
}
EOF
}

