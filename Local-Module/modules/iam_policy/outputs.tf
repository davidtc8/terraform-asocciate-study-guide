output "policy_arn" {
  description = "ARN of the IAM Policy"
  value       = aws_iam_policy.policy.arn
}

output "policy_name" {
  description = "Name of the IAM Policy"
  value       = aws_iam_policy.policy.name
}

output "policy_id" {
  description = "ID of the IAM Policy"
  value       = aws_iam_policy.policy.id
}