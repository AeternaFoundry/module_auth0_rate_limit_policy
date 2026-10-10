output "rate_limit_policies_id" {
  description = "Map of id values across all rate_limit_policies, keyed the same as var.rate_limit_policies except keys with no id are omitted"
  value       = { for k, v in auth0_rate_limit_policy.rate_limit_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "rate_limit_policies_configuration" {
  description = "Map of configuration values across all rate_limit_policies, keyed the same as var.rate_limit_policies except keys with no configuration are omitted"
  value       = { for k, v in auth0_rate_limit_policy.rate_limit_policies : k => one(v.configuration) if v.configuration != null && length(v.configuration) > 0 }
}
output "rate_limit_policies_consumer" {
  description = "Map of consumer values across all rate_limit_policies, keyed the same as var.rate_limit_policies except keys with no consumer are omitted"
  value       = { for k, v in auth0_rate_limit_policy.rate_limit_policies : k => v.consumer if v.consumer != null && length(v.consumer) > 0 }
}
output "rate_limit_policies_consumer_selector" {
  description = "Map of consumer_selector values across all rate_limit_policies, keyed the same as var.rate_limit_policies except keys with no consumer_selector are omitted"
  value       = { for k, v in auth0_rate_limit_policy.rate_limit_policies : k => v.consumer_selector if v.consumer_selector != null && length(v.consumer_selector) > 0 }
}
output "rate_limit_policies_created_at" {
  description = "Map of created_at values across all rate_limit_policies, keyed the same as var.rate_limit_policies except keys with no created_at are omitted"
  value       = { for k, v in auth0_rate_limit_policy.rate_limit_policies : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "rate_limit_policies_resource" {
  description = "Map of resource values across all rate_limit_policies, keyed the same as var.rate_limit_policies except keys with no resource are omitted"
  value       = { for k, v in auth0_rate_limit_policy.rate_limit_policies : k => v.resource if v.resource != null && length(v.resource) > 0 }
}
output "rate_limit_policies_updated_at" {
  description = "Map of updated_at values across all rate_limit_policies, keyed the same as var.rate_limit_policies except keys with no updated_at are omitted"
  value       = { for k, v in auth0_rate_limit_policy.rate_limit_policies : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}

