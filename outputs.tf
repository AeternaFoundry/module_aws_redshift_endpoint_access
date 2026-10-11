output "redshift_endpoint_accesses_id" {
  description = "Map of id values across all redshift_endpoint_accesses, keyed the same as var.redshift_endpoint_accesses"
  value       = { for k, v in aws_redshift_endpoint_access.redshift_endpoint_accesses : k => v.id if v.id != null && length(v.id) > 0 }
}
output "redshift_endpoint_accesses_address" {
  description = "Map of address values across all redshift_endpoint_accesses, keyed the same as var.redshift_endpoint_accesses"
  value       = { for k, v in aws_redshift_endpoint_access.redshift_endpoint_accesses : k => v.address if v.address != null && length(v.address) > 0 }
}
output "redshift_endpoint_accesses_cluster_identifier" {
  description = "Map of cluster_identifier values across all redshift_endpoint_accesses, keyed the same as var.redshift_endpoint_accesses"
  value       = { for k, v in aws_redshift_endpoint_access.redshift_endpoint_accesses : k => v.cluster_identifier if v.cluster_identifier != null && length(v.cluster_identifier) > 0 }
}
output "redshift_endpoint_accesses_endpoint_name" {
  description = "Map of endpoint_name values across all redshift_endpoint_accesses, keyed the same as var.redshift_endpoint_accesses"
  value       = { for k, v in aws_redshift_endpoint_access.redshift_endpoint_accesses : k => v.endpoint_name if v.endpoint_name != null && length(v.endpoint_name) > 0 }
}
output "redshift_endpoint_accesses_port" {
  description = "Map of port values across all redshift_endpoint_accesses, keyed the same as var.redshift_endpoint_accesses"
  value       = { for k, v in aws_redshift_endpoint_access.redshift_endpoint_accesses : k => v.port if v.port != null }
}
output "redshift_endpoint_accesses_region" {
  description = "Map of region values across all redshift_endpoint_accesses, keyed the same as var.redshift_endpoint_accesses"
  value       = { for k, v in aws_redshift_endpoint_access.redshift_endpoint_accesses : k => v.region if v.region != null && length(v.region) > 0 }
}
output "redshift_endpoint_accesses_resource_owner" {
  description = "Map of resource_owner values across all redshift_endpoint_accesses, keyed the same as var.redshift_endpoint_accesses"
  value       = { for k, v in aws_redshift_endpoint_access.redshift_endpoint_accesses : k => v.resource_owner if v.resource_owner != null && length(v.resource_owner) > 0 }
}
output "redshift_endpoint_accesses_subnet_group_name" {
  description = "Map of subnet_group_name values across all redshift_endpoint_accesses, keyed the same as var.redshift_endpoint_accesses"
  value       = { for k, v in aws_redshift_endpoint_access.redshift_endpoint_accesses : k => v.subnet_group_name if v.subnet_group_name != null && length(v.subnet_group_name) > 0 }
}
output "redshift_endpoint_accesses_vpc_endpoint" {
  description = "Map of vpc_endpoint values across all redshift_endpoint_accesses, keyed the same as var.redshift_endpoint_accesses"
  value       = { for k, v in aws_redshift_endpoint_access.redshift_endpoint_accesses : k => v.vpc_endpoint if v.vpc_endpoint != null && length(v.vpc_endpoint) > 0 }
}
output "redshift_endpoint_accesses_vpc_security_group_ids" {
  description = "Map of vpc_security_group_ids values across all redshift_endpoint_accesses, keyed the same as var.redshift_endpoint_accesses"
  value       = { for k, v in aws_redshift_endpoint_access.redshift_endpoint_accesses : k => v.vpc_security_group_ids if v.vpc_security_group_ids != null && length(v.vpc_security_group_ids) > 0 }
}

