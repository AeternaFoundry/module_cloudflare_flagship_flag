output "flagship_flags_account_id" {
  description = "Map of account_id values across all flagship_flags, keyed the same as var.flagship_flags except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_flagship_flag.flagship_flags : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "flagship_flags_app_id" {
  description = "Map of app_id values across all flagship_flags, keyed the same as var.flagship_flags except keys with no app_id are omitted"
  value       = { for k, v in cloudflare_flagship_flag.flagship_flags : k => v.app_id if v.app_id != null && length(v.app_id) > 0 }
}
output "flagship_flags_default_variation" {
  description = "Map of default_variation values across all flagship_flags, keyed the same as var.flagship_flags except keys with no default_variation are omitted"
  value       = { for k, v in cloudflare_flagship_flag.flagship_flags : k => v.default_variation if v.default_variation != null && length(v.default_variation) > 0 }
}
output "flagship_flags_description" {
  description = "Map of description values across all flagship_flags, keyed the same as var.flagship_flags except keys with no description are omitted"
  value       = { for k, v in cloudflare_flagship_flag.flagship_flags : k => v.description if v.description != null && length(v.description) > 0 }
}
output "flagship_flags_enabled" {
  description = "Map of enabled values across all flagship_flags, keyed the same as var.flagship_flags except keys with no enabled are omitted"
  value       = { for k, v in cloudflare_flagship_flag.flagship_flags : k => v.enabled if v.enabled != null }
}
output "flagship_flags_flag_key" {
  description = "Map of flag_key values across all flagship_flags, keyed the same as var.flagship_flags except keys with no flag_key are omitted"
  value       = { for k, v in cloudflare_flagship_flag.flagship_flags : k => v.flag_key if v.flag_key != null && length(v.flag_key) > 0 }
}
output "flagship_flags_key" {
  description = "Map of key values across all flagship_flags, keyed the same as var.flagship_flags except keys with no key are omitted"
  value       = { for k, v in cloudflare_flagship_flag.flagship_flags : k => v.key if v.key != null && length(v.key) > 0 }
}
output "flagship_flags_rules" {
  description = "Map of rules values across all flagship_flags, keyed the same as var.flagship_flags except keys with no rules are omitted"
  value       = { for k, v in cloudflare_flagship_flag.flagship_flags : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "flagship_flags_type" {
  description = "Map of type values across all flagship_flags, keyed the same as var.flagship_flags except keys with no type are omitted"
  value       = { for k, v in cloudflare_flagship_flag.flagship_flags : k => v.type if v.type != null && length(v.type) > 0 }
}
output "flagship_flags_updated_at" {
  description = "Map of updated_at values across all flagship_flags, keyed the same as var.flagship_flags except keys with no updated_at are omitted"
  value       = { for k, v in cloudflare_flagship_flag.flagship_flags : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}
output "flagship_flags_updated_by" {
  description = "Map of updated_by values across all flagship_flags, keyed the same as var.flagship_flags except keys with no updated_by are omitted"
  value       = { for k, v in cloudflare_flagship_flag.flagship_flags : k => v.updated_by if v.updated_by != null && length(v.updated_by) > 0 }
}
output "flagship_flags_variations" {
  description = "Map of variations values across all flagship_flags, keyed the same as var.flagship_flags except keys with no variations are omitted"
  value       = { for k, v in cloudflare_flagship_flag.flagship_flags : k => v.variations if v.variations != null && length(v.variations) > 0 }
}

