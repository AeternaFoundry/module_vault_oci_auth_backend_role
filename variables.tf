variable "oci_auth_backend_roles" {
  description = <<EOT
Map of oci_auth_backend_roles, attributes below
Required:
    - name
Optional:
    - alias_metadata
    - backend
    - namespace
    - ocid_list
    - token_bound_cidrs
    - token_explicit_max_ttl
    - token_max_ttl
    - token_no_default_policy
    - token_num_uses
    - token_period
    - token_policies
    - token_ttl
    - token_type
EOT

  type = map(object({
    name                    = string
    alias_metadata          = optional(map(string))
    backend                 = optional(string)
    namespace               = optional(string)
    ocid_list               = optional(list(string))
    token_bound_cidrs       = optional(set(string))
    token_explicit_max_ttl  = optional(number)
    token_max_ttl           = optional(number)
    token_no_default_policy = optional(bool)
    token_num_uses          = optional(number)
    token_period            = optional(number)
    token_policies          = optional(set(string))
    token_ttl               = optional(number)
    token_type              = optional(string)
  }))
}

