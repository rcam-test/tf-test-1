data "local_file" "domains_file" {
  filename = var.file_path
}

locals {
  domains = [
    for record in split("\n", data.local_file.domains_file.content) :
    trimspace(record) if record != "" && length(regexall("^#", record)) == 0 # allows for 'comments' in file
  ]
}

resource "google_dns_record_set" "dns_record_set" {
  for_each     = toset(local.domains)
  name         = "${each.key}."
  type         = "A"
  ttl          = 900
  managed_zone = var.zone
  rrdatas      = var.answers
  depends_on   = [data.local_file.domains_file]
}
