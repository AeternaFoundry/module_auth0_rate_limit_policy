variable "rate_limit_policies" {
  description = <<EOT
Map of rate_limit_policies, attributes below
Required:
    - consumer
    - consumer_selector
    - resource
    - configuration (block):
        - action (required)
        - limit (optional)
        - redirect_uri (optional)
EOT

  type = map(object({
    consumer          = string
    consumer_selector = string
    resource          = string
    configuration = object({
      action       = string
      limit        = optional(number)
      redirect_uri = optional(string)
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.rate_limit_policies : (
        v.configuration.limit == null || (v.configuration.limit >= 0 && v.configuration.limit <= 10000)
      )
    ])
    error_message = "must be between 0 and 10000"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

