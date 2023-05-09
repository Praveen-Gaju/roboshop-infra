module "ec2" {
  for_each      = var.instances
  source        = "./ec2"
  component     = each.value["name"]
  instance_type = each.value["type"]
  env           = var.env
  #password      = try(each.value["password"], "null") ##used when executing script using shell
}