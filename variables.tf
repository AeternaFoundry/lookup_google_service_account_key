variable "service_account_key_lookup" {
  description = <<EOT
Map of service_account_key_lookup, attributes below
Required:
    - name
Optional:
    - public_key_type
EOT

  type = map(object({
    name            = string
    public_key_type = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.service_account_key_lookup : (
        v.public_key_type == null || (contains(["TYPE_NONE", "TYPE_X509_PEM_FILE", "TYPE_RAW_PUBLIC_KEY"], v.public_key_type))
      )
    ])
    error_message = "must be one of: \"TYPE_NONE\", \"TYPE_X509_PEM_FILE\", \"TYPE_RAW_PUBLIC_KEY\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

