
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "rcam-org"

    workspaces {
      prefix = "tf-test-1-folder-1"
    }
  }
}

resource "null_resource" "terraform-github-actions" {
  triggers = {
    value = "This resource was created using GitHub Actions! 2"
  }
}
