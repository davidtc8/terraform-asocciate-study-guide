#  provider block
provider "github" {
  token = var.github_token
}

# resource block
resource "github_repository" "production-repo" {
  name        = "prod-repo-test-terraform"
  description = "Building a repo from terraform"
  private     = false
}
