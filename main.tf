resource "vault_oci_auth_backend_role" "oci_auth_backend_roles" {
  for_each = var.oci_auth_backend_roles

  name                    = each.value.name
  alias_metadata          = each.value.alias_metadata
  backend                 = each.value.backend
  namespace               = each.value.namespace
  ocid_list               = each.value.ocid_list
  token_bound_cidrs       = each.value.token_bound_cidrs
  token_explicit_max_ttl  = each.value.token_explicit_max_ttl
  token_max_ttl           = each.value.token_max_ttl
  token_no_default_policy = each.value.token_no_default_policy
  token_num_uses          = each.value.token_num_uses
  token_period            = each.value.token_period
  token_policies          = each.value.token_policies
  token_ttl               = each.value.token_ttl
  token_type              = each.value.token_type
}

