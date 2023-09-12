
variable "slack_alerting_destinations" {
  type = list(object({
    name = string
    url  = string
  }))
  description = <<-EOT
  List of Slack destinations.
  E.g. [ {
    name: "monitoring-prod"
    url: "T03LAS4GQ/B03UA1J6H7T/tNBYUxtnElTLYB5ewrKmQAYH"
  }]
  EOT
}
