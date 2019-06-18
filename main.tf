module "maersk_trigger_shore_producer_message_history" {
  source        = "git::https://github.com/MeteoGroup/infra-modules-terraform.git//modules/dynamodb?ref=master"
  name          = "${var.prefix}_${var.project}_trigger_shore_producer_message_history"
  hash_key      = "Id"
  hash_key_type = "S"

  tags = "${var.tags}"
}

module "maersk_package_subscriptions" {
  source         = "git::https://github.com/MeteoGroup/infra-modules-terraform.git//modules/dynamodb?ref=master"
  name           = "${var.prefix}_${var.project}_package_subscriptions"
  hash_key       = "Id"
  hash_key_type  = "S"
  range_key      = "Imo"
  range_key_type = "S"

  tags = "${var.tags}"
}

module "maersk_forecastmetadata" {
  source         = "git::https://github.com/MeteoGroup/infra-modules-terraform.git//modules/dynamodb?ref=master"
  name           = "${var.prefix}_${var.project}_forecastmetadata"
  hash_key       = "Id"
  hash_key_type  = "S"
  range_key      = "IssuedDate"
  range_key_type = "S"

  tags = "${var.tags}"
}

module "maersk_forecastweatherelement" {
  source         = "git::https://github.com/MeteoGroup/infra-modules-terraform.git//modules/dynamodb?ref=master"
  name           = "${var.prefix}_${var.project}_forecastweatherelement"
  hash_key       = "Id"
  hash_key_type  = "N"
  range_key      = "Name"
  range_key_type = "S"

  tags = "${var.tags}"
}

module "populate_forecastweatherelement" {
  source                    = "./feed-dyndb"
  table_name                = "${module.maersk_forecastweatherelement.table_name}"
  table_package_subscr_name = "${module.maersk_package_subscriptions.table_name}"
  table_tenant_reg_name     = "${module.tenant_registrations.table_name}"
}

module "maersk_sender_handle_subscriptions" {
  source         = "git::https://github.com/MeteoGroup/infra-modules-terraform.git//modules/dynamodb?ref=master"
  name           = "${var.prefix}_${var.project}_sender_handle_subscriptions"
  hash_key       = "Id"
  hash_key_type  = "S"
  range_key      = "SubscriptionId"
  range_key_type = "S"

  tags = "${var.tags}"
}

module "tenants" {
  source         = "git::https://github.com/MeteoGroup/infra-modules-terraform.git//modules/dynamodb?ref=master"
  name           = "${var.prefix}_tenants"
  hash_key       = "Id"
  hash_key_type  = "S"
  range_key      = "Name"
  range_key_type = "S"

  tags = "${var.tags}"
}

module "maersk_subscriptions_handle_events" {
  source         = "git::https://github.com/MeteoGroup/infra-modules-terraform.git//modules/dynamodb?ref=master"
  name           = "${var.prefix}_${var.project}_subscriptions_handle_events"
  hash_key       = "Id"
  hash_key_type  = "S"
  range_key      = "EventSource"
  range_key_type = "S"

  tags = "${var.tags}"
}

module "tenant_registrations" {
  source         = "git::https://github.com/MeteoGroup/infra-modules-terraform.git//modules/dynamodb?ref=master"
  name           = "${var.prefix}_tenant_registrations"
  hash_key       = "Id"
  hash_key_type  = "S"
  range_key      = "Name"
  range_key_type = "S"

  tags = "${var.tags}"
}

module "maersk_route_jobs" {
  source        = "git::https://github.com/MeteoGroup/infra-modules-terraform.git//modules/dynamodb?ref=master"
  name          = "${var.prefix}_maersk_route_jobs"
  hash_key      = "Id"
  hash_key_type = "S"

  tags = "${var.tags}"
}
