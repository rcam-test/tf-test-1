resource "null_resource" "terraform-github-actions" {
  triggers = {
    value = "This resource was created using GitHub Actions! folder_2 pr #1"
  }
}
