# Contains variables that are shared across the common directory and the customer_domains directory.

variable "gateway_anycast_answers" {
  description = "Anycast IP addressesses for gateway"
  default     = ["1.2.3.4", "5.6.7.8"]
}

variable "ui_answers" {
  description = "OpenX UI IP address (ui.prod.gcp.openx.org)"
  default     = ["9.10.11.12"]
}
