module "maersk_trigger_shore_producer_message_history" {
  source        = "./modules/dynamodb"
  name          = "${var.prefix}_${var.project}_trigger_shore_producer_message_history"
  hash_key      = "Id"
  hash_key_type = "S"

  tags = "${var.tags}"
}

module "maersk_package_subscriptions" {
  source         = "./modules/dynamodb"
  name           = "${var.prefix}_${var.project}_package_subscriptions"
  hash_key       = "Id"
  hash_key_type  = "S"
  range_key      = "Imo"
  range_key_type = "S"

  tags = "${var.tags}"
}

module "populate_forecastweatherelement" {
  source                          = "./feed-dyndb"
  table_package_subscr_name       = "${module.maersk_package_subscriptions.table_name}"
  table_tenant_reg_name           = "${module.tenant_registrations.table_name}"
  table_forecastweatherelement_v2 = "${module.maersk_forecastweatherelement_v2.table_name}"
  table_route_danger_categories   = "${module.maersk_route_danger_categories.table_name}"
}

module "maersk_sender_handle_subscriptions" {
  source         = "./modules/dynamodb"
  name           = "${var.prefix}_${var.project}_sender_handle_subscriptions"
  hash_key       = "Id"
  hash_key_type  = "S"
  range_key      = "SubscriptionId"
  range_key_type = "S"

  tags = "${var.tags}"
}

module "maersk_subscriptions_handle_events" {
  source         = "./modules/dynamodb"
  name           = "${var.prefix}_${var.project}_subscriptions_handle_events"
  hash_key       = "Id"
  hash_key_type  = "S"
  range_key      = "EventSource"
  range_key_type = "S"

  tags = "${var.tags}"
}

module "tenant_registrations" {
  source         = "./modules/dynamodb"
  name           = "${var.prefix}_tenant_registrations"
  hash_key       = "Id"
  hash_key_type  = "S"
  range_key      = "Name"
  range_key_type = "S"

  tags = "${var.tags}"
}

module "maersk_route_jobs" {
  source        = "./modules/dynamodb"
  name          = "${var.prefix}_maersk_route_jobs"
  hash_key      = "Id"
  hash_key_type = "S"

  tags = "${var.tags}"
}

module "maersk_route_danger_categories" {
  source        = "./modules/dynamodb"
  name          = "${var.prefix}_maersk_route_danger_categories"
  hash_key      = "Id"
  hash_key_type = "N"

  tags = "${var.tags}"
}

module "maersk_forecastweatherelement_v2" {
  source         = "./modules/dynamodb"
  name           = "${var.prefix}_${var.project}_forecastweatherelement_v2"
  hash_key       = "Id"
  hash_key_type  = "N"
  range_key      = "Name"
  range_key_type = "S"

  tags = "${var.tags}"
}

module "maersk_maersk_forecastmetadata_v2" {
  source         = "./modules/dynamodb"
  name           = "${var.prefix}_${var.project}_forecastmetadata_v2"
  hash_key       = "Id"
  hash_key_type  = "S"
  range_key      = "IssuedDate"
  range_key_type = "S"

  tags = "${var.tags}"
}

module "maersk_maersk_forecastelement_v2" {
  source         = "./modules/dynamodb"
  name           = "${var.prefix}_${var.project}_forecastelement_v2"
  hash_key       = "Id"
  hash_key_type  = "S"
  range_key      = "ForecastId"
  range_key_type = "S"

  tags = "${var.tags}"

  global_secondary_index_map = [
    {
      name            = "ForecastIdIndex"
      hash_key        = "ForecastId"
      projection_type = "ALL"
    },
  ]
}

module "forecast_evidence" {
  source         = "./modules/dynamodb"
  name           = "${var.prefix}_forecast_evidence"
  hash_key       = "TenantId"
  hash_key_type  = "S"
  range_key      = "EvidenceName"
  range_key_type = "S"

  tags = "${var.tags}"
}

module "dataset_processing_journal" {
  source         = "./modules/dynamodb"
  name           = "${var.prefix}_dataset_processing_journal"
  hash_key       = "ModelId"
  hash_key_type  = "S"
  range_key      = "DatasetName"
  range_key_type = "S"
  tags           = "${var.tags}"
}
