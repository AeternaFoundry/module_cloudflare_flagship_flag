resource "cloudflare_flagship_flag" "flagship_flags" {
  for_each = var.flagship_flags

  account_id        = each.value.account_id
  app_id            = each.value.app_id
  default_variation = each.value.default_variation
  enabled           = each.value.enabled
  key               = each.value.key
  rules             = each.value.rules
  variations        = each.value.variations
  description       = each.value.description
  flag_key          = each.value.flag_key
  type              = each.value.type
}

