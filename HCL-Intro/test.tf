
resource "github_repository" "testing-repo" {
  name        = "test-repo-test-terraform"
  description = "Building another repo from terraform"
  private     = false
}