terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = 
}

# Add a user to the organization
resource "github_repository" "example" {
  name        = "initRepoTFLab"
  description = "Initial repo for the terraform lab for arquitics"

  visibility = "public"
}

/* resource "github_repository" "example1" {
  name        = "branchRepoTFLab"
  description = "repo for the terraform lab for arquitics"

  visibility = "public"
} */

/* resource "github_branch" "development" {
  repository = "initRepoTFLab"
  branch     = "development"
}

resource "github_branch" "deploy" {
  repository = "initRepoTFLab"
  branch     = "deploy"
}

resource "github_branch" "test" {
  repository = "initRepoTFLab"
  branch     = "test"
} */