provider "akamai" {
  edgerc        = "../../test/edgerc"
  cache_enabled = false
}

resource "akamai_appsec_activations" "test" {
  config_id           = 43253
  version             = 7
  network             = "STAGING"
  note                = "Test Notes"
  notification_emails = ["user@example.com"]
}

