output "account" {
  value = aws_organizations_account.account
}

output "account_id" {
  value = aws_organizations_account.account.id
}