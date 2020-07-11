resource "null_resource" "terraform-github-actions" {
  triggers = {
    value = "This resource was created using GitHub Actions! folder_2 this should be a no-op in folder_1"
  }
}
