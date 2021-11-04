module "network" {
  source  = "app.terraform.io/laurentiupinteaDB/network/google"
  version = "3.4.0"
  # insert required variables here
  network_name= "vpc"
  project_id = var.project
  subnets = [
    {
      subnet_name   = "vpc-subnet"
      subnet_ip     = "10.100.10.0/24"
      subnet_region = var.region
    }
  ]
}