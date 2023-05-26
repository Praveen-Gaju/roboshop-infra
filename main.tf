module "vpc" {
  source = "https://github.com/Praveen-Gaju/tf-module-vpc.git"
  for_each = var.vpc
}