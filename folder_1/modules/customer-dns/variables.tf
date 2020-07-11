variable "file_path" {
  description = "Path to file of customer domains"
}

variable "zone" {
  description = "DNS zone name in the GCP format (hyphen instead of periods; ex. openx-net)"
}

variable "answers" {
  description = "List of DNS answers"
}
