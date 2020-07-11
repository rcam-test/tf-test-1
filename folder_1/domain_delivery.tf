# openx.net
module "delivery_openx_net" {
  source    = "./modules/customer-dns"
  zone      = "openx-net"
  file_path = "${path.module}/files/delivery/openx_net.txt"
  answers   = var.gateway_anycast_answers
}


# openxenterprise.com
module "delivery_openxenterprise_com" {
  source    = "./modules/customer-dns"
  zone      = "openxenterprise-com"
  file_path = "${path.module}/files/delivery/openxenterprise_com.txt"
  answers   = var.gateway_anycast_answers
}
