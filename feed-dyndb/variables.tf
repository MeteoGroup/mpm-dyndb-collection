variable "table_name" {
  type        = "string"
  description = "Table name has to be forecastweatherelement"
}

variable "table_forecastweatherelement_v2" {
  type        = "string"
  description = "Table name has to be forecastweatherelement v2"
}

variable "table_package_subscr_name" {
  type        = "string"
  description = "Table name has to be maersk_package_subscriptions"
}

variable "table_tenant_reg_name" {
  type        = "string"
  description = "Table name has to be tenant_registrations"
}

variable "table_route_danger_categories" {
  type        = "string"
  description = "Table name has to be env_maersk_route_danger_categories"
}
