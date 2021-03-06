provider "aws" {
  region = "eu-west-1"
}

module "developer" {
  source          = "../../../iam/developer"
  prefix          = "your-project"
  trusted_account = "<user-account>"

  users = [
    "first.last",
  ]
}

output "arn" {
  value = "${module.developer.arn}"
}

output "url" {
  value = "${module.developer.url}"
}
