# Configure the Cloudflare provider using the required_providers stanza required with Terraform 0.13 and beyond
# You may optionally use version directive to prevent breaking changes occurring unannounced.


# Create a record
resource "cloudflare_record" "foobar" {
  zone_id = ""
  name    = "hello"
  value   = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
  type    = "A"
  ttl     = 1
}
