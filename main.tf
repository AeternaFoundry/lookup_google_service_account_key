data "google_service_account_key" "service_account_key_lookup" {
  for_each = var.service_account_key_lookup

  name            = each.value.name
  public_key_type = each.value.public_key_type
}

