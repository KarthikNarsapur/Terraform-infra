module "vpc" {
  source = "./modules/vpc"

  project_id  = var.project_id
  vpc_name    = var.vpc_name
}

module "vm" {
  source = "./modules/vm"
  project_id = var.project_id
  zone       = var.zone
  subnetwork = module.vpc.public_subnet_1
}