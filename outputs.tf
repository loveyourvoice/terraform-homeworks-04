output "vpc_subnet" {
  description = "Информация про подсеть"
  value       = module.vpc_dev.vpc_subnet
}