output "rate_limit_policies_id" {
  description = "Map of id values across all rate_limit_policies, keyed the same as var.rate_limit_policies"
  value       = { for k, v in auth0_rate_limit_policy.rate_limit_policies : k => v.id }
}
output "rate_limit_policies_configuration" {
  description = "Map of configuration values across all rate_limit_policies, keyed the same as var.rate_limit_policies"
  value       = { for k, v in auth0_rate_limit_policy.rate_limit_policies : k => one(v.configuration) }
}
output "rate_limit_policies_consumer" {
  description = "Map of consumer values across all rate_limit_policies, keyed the same as var.rate_limit_policies"
  value       = { for k, v in auth0_rate_limit_policy.rate_limit_policies : k => v.consumer }
}
output "rate_limit_policies_consumer_selector" {
  description = "Map of consumer_selector values across all rate_limit_policies, keyed the same as var.rate_limit_policies"
  value       = { for k, v in auth0_rate_limit_policy.rate_limit_policies : k => v.consumer_selector }
}
output "rate_limit_policies_created_at" {
  description = "Map of created_at values across all rate_limit_policies, keyed the same as var.rate_limit_policies"
  value       = { for k, v in auth0_rate_limit_policy.rate_limit_policies : k => v.created_at }
}
output "rate_limit_policies_resource" {
  description = "Map of resource values across all rate_limit_policies, keyed the same as var.rate_limit_policies"
  value       = { for k, v in auth0_rate_limit_policy.rate_limit_policies : k => v.resource }
}
output "rate_limit_policies_updated_at" {
  description = "Map of updated_at values across all rate_limit_policies, keyed the same as var.rate_limit_policies"
  value       = { for k, v in auth0_rate_limit_policy.rate_limit_policies : k => v.updated_at }
}

