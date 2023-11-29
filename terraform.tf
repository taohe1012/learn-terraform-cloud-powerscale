terraform {
/*
  cloud {
    organization = "Terraform_Cloud_TTHE"

    workspaces {
      name = "learn-terraform-cloud-powerscale"
    }
  }
*/
  required_providers {
    powerscale = {
      source = "registry.terraform.io/dell/powerscale"
      version = "1.0.0"
    }
  }

  required_version = ">= 1.1.0"
}
