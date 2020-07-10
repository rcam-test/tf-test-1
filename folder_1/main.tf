terraform {
  backend "remote" {
    organization = "rcam-org"

    workspaces {
      name = "tf-test-1-folder-1"
    }
  }
}

resource "null_resource" "terraform-github-actions" {
  triggers = {
    value = "This resource was created using GitHub Actions in Folder_1!"
  }
}
