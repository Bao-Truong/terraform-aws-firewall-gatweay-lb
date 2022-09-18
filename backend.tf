terraform {
  backend "s3" {
    bucket               = "remote-state-terraform-956722820961"
    key                  = "aws/connectivity/firewall/terraform.tfstate"
    workspace_key_prefix = "envs"
    region               = "us-east-2"
    dynamodb_table       = "terraform-locks"
    encrypt              = true
  }
}

