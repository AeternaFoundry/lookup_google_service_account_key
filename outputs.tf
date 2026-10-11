output "service_account_key_lookup_id" {
  description = "Map of id values across all service_account_key_lookup, keyed the same as var.service_account_key_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_service_account_key.service_account_key_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_account_key_lookup_key_algorithm" {
  description = "Map of key_algorithm values across all service_account_key_lookup, keyed the same as var.service_account_key_lookup except keys with no key_algorithm are omitted"
  value       = { for k, v in data.google_service_account_key.service_account_key_lookup : k => v.key_algorithm if v.key_algorithm != null && length(v.key_algorithm) > 0 }
}
output "service_account_key_lookup_name" {
  description = "Map of name values across all service_account_key_lookup, keyed the same as var.service_account_key_lookup except keys with no name are omitted"
  value       = { for k, v in data.google_service_account_key.service_account_key_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "service_account_key_lookup_public_key" {
  description = "Map of public_key values across all service_account_key_lookup, keyed the same as var.service_account_key_lookup except keys with no public_key are omitted"
  value       = { for k, v in data.google_service_account_key.service_account_key_lookup : k => v.public_key if v.public_key != null && length(v.public_key) > 0 }
}
output "service_account_key_lookup_public_key_type" {
  description = "Map of public_key_type values across all service_account_key_lookup, keyed the same as var.service_account_key_lookup except keys with no public_key_type are omitted"
  value       = { for k, v in data.google_service_account_key.service_account_key_lookup : k => v.public_key_type if v.public_key_type != null && length(v.public_key_type) > 0 }
}

