module "vpc_dev" {
  source       = "./my-module"
  env_name     = "develop"
  zone         = "ru-central1-a"
  cidr         = "10.0.1.0/24"
}
module "test-vm" {
  source          = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name        = "develop"
  network_id      = module.vpc_dev.vpc_subnet.network_id
  subnet_zones    = ["ru-central1-a"]
  subnet_ids      = [ module.vpc_dev.vpc_subnet.id ]
  instance_name   = "web"
  instance_count  = 1
  image_family    = "ubuntu-2004-lts"
  public_ip       = true
  
  metadata = {
      serial-port-enable = 1
  }

}
