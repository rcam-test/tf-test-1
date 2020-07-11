# openx.net

module "ui_openx_net" {
  source    = "./modules/customer-dns"
  zone      = "openx-net"
  file_path = "${path.module}/files/ui/openx_net.txt"
  answers   = var.ui_answers
}

module "ui_openxenterprise_com" {
  source    = "./modules/customer-dns"
  zone      = "openxenterprise-com"
  file_path = "${path.module}/files/ui/openxenterprise_com.txt"
  answers   = var.ui_answers
}

