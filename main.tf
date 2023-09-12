resource "restapi_object" "alerting_destination" {
  count        = length(local.slack_alerting_destinations)
  id_attribute = "_id"
  path         = "/_plugins/_alerting/destinations"
  data         = jsonencode(local.slack_alerting_destinations[count.index])
  # TODO: This complains about for_each getting a tuple
  # for_each     = local.slack_alerting_destinations
  # data         = jsonencode(each.value)
}

locals {
  slack_alerting_destinations = [
    for destination in var.slack_alerting_destinations : {
      name : destination["name"]
      slack : {
        url : "https://hooks.slack.com/services/${destination["url"]}"
      }
      type : "slack"
    }
  ]
}
