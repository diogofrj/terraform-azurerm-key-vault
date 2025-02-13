module "labels" {
  source      = "../../labels"
  project     = "module-example"
  environment = "dev"
  region      = "eastus2"
}


module "example" {
  #   source = "git::https://github.com/diogofrj/templates-tf-modules.git//examples/azure/aks?ref=v0.0.1"
  source      = "../"
  resource_group_name = module.labels.resource_group_name
  location = module.labels.location
}


