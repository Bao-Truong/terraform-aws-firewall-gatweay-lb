resource "time_static" "current_date" {}

locals {
  name   = "external-prod"
  region = "us-east-2"
  # prefix = "${terraform.workspace}-${var.prefix}"
  prefix = var.prefix
  # alias  = jsondecode(file("alias.json"))
  alias = module.aws-utils.alias
  common_tags = {
    "Environment" = terraform.workspace
    "BuildDate"   = formatdate("YYYY/MM/DD hh:mm:ss", time_static.current_date.rfc3339)
    "Maintainer"  = "BaoTruong"
    "Contact"     = "baosbk@gmail.com"
  }
}

