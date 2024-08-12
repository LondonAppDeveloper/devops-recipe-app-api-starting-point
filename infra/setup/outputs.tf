output "cd_user_access_key_id" {
  value       = aws_iam_access_key.cd.id
  description = "AWS key ID for CD user"
}

output "cd_user_access_key_secret" {
  value       = aws_iam_access_key.cd.secret
  description = "AWS Access Key secret for CD user"
  sensitive   = true
}


