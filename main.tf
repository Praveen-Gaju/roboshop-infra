module "vpc" {
  source      = "https://github.com/Praveen-Gaju/tf-module-vpc.git"
  env         = var.env
  for_each    = var.vpc
  vpc_cidr    = each.value["vpc_cidr"]
}