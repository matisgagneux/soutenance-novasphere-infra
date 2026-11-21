output "vpc_id" {
  description = "ID du VPC"
  value       = module.vpc.vpc_id
}

output "alb_dns_name" {
  description = "URL de la page"
  value       = "http://${module.web.alb_dns_name}"
}
