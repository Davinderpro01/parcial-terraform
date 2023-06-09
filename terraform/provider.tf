variable "my_access_key" {
  description = "Access-key-for-aws"
  default = "no_access_key_value_found"
}
 
variable "my_secret_key" {
  description = "Secret-key-for-aws"
  default = "no_secret_key_value_found"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.66.1"
    }
  }
}

provider "aws" {
    region = local.aws.region
    access_key = var.my_access_key
    secret_key = var.my_secret_key
}
