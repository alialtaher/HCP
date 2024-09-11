terraform {
  required_providers {
    # aws = {
    #   source  = "hashicorp/aws"
    #   version = "~> 4.0"
    # }
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
# provider "aws" {
#   region  = "ap-south-1"
#   profile = "terraformprofile"
# }

# Configure the GitHub Provider
provider "github" {
  token = $Github_token
}

resource "github_repository" "Test" {
  name        = "Test"
  description = "My awesome codebase"

  visibility = "public"
}
