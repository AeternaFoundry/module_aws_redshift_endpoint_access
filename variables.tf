variable "redshift_endpoint_accesses" {
  description = <<EOT
Map of redshift_endpoint_accesses, attributes below
Required:
    - cluster_identifier
    - endpoint_name
    - subnet_group_name
Optional:
    - region
    - resource_owner
    - vpc_security_group_ids
EOT

  type = map(object({
    cluster_identifier     = string
    endpoint_name          = string
    subnet_group_name      = string
    region                 = optional(string)
    resource_owner         = optional(string)
    vpc_security_group_ids = optional(set(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.redshift_endpoint_accesses : (
        (length(v.endpoint_name) >= 1 && length(v.endpoint_name) <= 30) && (can(regex("^[0-9a-z-]+$", v.endpoint_name)))
      )
    ])
    error_message = "all of: must be between 1 and 30 characters; must contain only lowercase alphanumeric characters and hyphens"
  }
}

