resource "auth0_rate_limit_policy" "rate_limit_policies" {
  for_each = var.rate_limit_policies

  consumer          = each.value.consumer
  consumer_selector = each.value.consumer_selector
  resource          = each.value.resource

  configuration {
    action       = each.value.configuration.action
    limit        = each.value.configuration.limit
    redirect_uri = each.value.configuration.redirect_uri
  }
}

