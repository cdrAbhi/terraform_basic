

provider "github"{

   token="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"
}


resource "github_repository" "repo-git-1" {
  name        = "AWS-resources-1"
  description = "My awesome codebase"

  visibility = "public"

}



resource "github_repository" "repo-git-2" {
  name        = "AWS-resources-2"
  description = "My awesome codebase"

  visibility = "public"

}
