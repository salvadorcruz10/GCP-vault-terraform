output "address" {
  value = google_compute_address.vault.address
}

# Output the initial root token
output "root_token" {
  value = data.google_kms_secret.keys.plaintext
}

# Uncomment this if you want to decrypt the token yourself
# output "root_token_decrypt_command" {
#   value = "gsutil cat gs://${google_storage_bucket.vault.name}/root-token.enc | base64 --decode | gcloud kms decrypt --project ${local.vault_project_id} --location ${var.region} --keyring ${google_kms_key_ring.vault.name} --key ${google_kms_crypto_key.vault-init.name} --ciphertext-file - --plaintext-file -"
# }