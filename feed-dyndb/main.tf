data "aws_dynamodb_table" "table" {
  name = "${var.table_name}"
}

data "aws_dynamodb_table" "table_tenant_registrations" {
  name = "${var.table_tenant_reg_name}"
}

resource "aws_dynamodb_table_item" "table_tenant_registrations" {
  table_name = "${data.aws_dynamodb_table.table_tenant_registrations.name}"
  hash_key   = "${data.aws_dynamodb_table.table_tenant_registrations.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_tenant_registrations.range_key}"

  item = <<ITEM
{
  "Id": {"S": "d0815eaa-92d3-4842-8ccf-558028a3a9f4"},
  "Name": {"S": "maersk"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

data "aws_dynamodb_table" "table_package_subscriptions" {
  name = "${var.table_package_subscr_name}"
}

#resource "aws_dynamodb_table_item" "table_package_subscriptions" {
#  table_name = "${data.aws_dynamodb_table.table_package_subscriptions.name}"
#  hash_key   = "${data.aws_dynamodb_table.table_package_subscriptions.hash_key}"
#  range_key  = "${data.aws_dynamodb_table.table_package_subscriptions.range_key}"

#  item = <<ITEM
#{
#  "Areas": {"L":[{"M":{"Definition":{"M":{"geometry":{"M":{"coordinates":{"L":[{"L":[{"L":[{"N":"-180"},{"N":"-90"}]},{"L":[{"N":"-180"},{"N":"90"}]},{"L":[{"N":"180"},{"N":"90"}]},{"L":[{"N":"180"},{"N":"-90"}]},{"L":[{"N":"-180"},{"N":"-90"}]}]}]},"type":{"S":"Polygon"}}},"properties":{"M":{}},"type":{"S":"Feature"}}},"Elements":{"L":[{"M":{"Resolution":{"N":"2.5"},"WeatherElement":{"N":"0"}}},{"M":{"Resolution":{"N":"2.5"},"WeatherElement":{"N":"2"}}}]},"ForecastLength":{"N":"48"}}}]},
#  "CreatedDate": {"S":"0001-01-01T00:00:00.000Z"},
#  "Deleted":{"N":"0"},
#  "Delivery":{"M":{"Method":{"S":"Email"},"MethodOptions":{"M":{"EmailFrom":{"S":"shipforecast@meteogroup.com"},"EmailTo":{"S":"shipforecast@meteogroup.com"}}},"Type":{"S":"Schedule"},"TypeOptions":{"M":{"Expression":{"S":"* * * * *"},"StartFrom":{"S":"2019-06-17T11:16:56.185907Z"}}}}},
#  "Id":{"S":"M2ZhY2M2MmItNzMyOS00ODJkLTlkM2ItNzY2YzdjNzYyZTk2"},
#  "Imo":{"S":"123456"},
#  "RowVersion":{"N":"1"},
#  "UpdatedDate":{"S":"2019-06-17T11:16:56.186Z"}
#}
#ITEM

#  lifecycle {
#    ignore_changes = ["item"]
#  }
#}

resource "aws_dynamodb_table_item" "this0" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "hPa"},
  "Description": {"S": "Surface pressure in hPa/millibars"},
  "Id": {"N": "0"},
  "Name": {"S": "Pressure"},
  "Precision": {"N": "1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this1" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "m"},
  "Description": {"S": "500hPa height in meters"},
  "Id": {"N": "1"},
  "Name": {"S": "HPa500"},
  "Precision": {"N": "1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this2" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "degree, m/s"},
  "Description": {"S": "Wind speed at 10m with direction relative to North"},
  "Id": {"N": "2"},
  "Name": {"S": "Wind10M"},
  "Precision": {"N": "0.5"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this3" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "degree, m/s"},
  "Description": {"S": "Wind speed at 50m with direction relative to North"},
  "Id": {"N": "3"},
  "Name": {"S": "Wind50M"},
  "Precision": {"N": "0.5"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this4" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "m/s"},
  "Description": {"S": "Wind gusts at 10m"},
  "Id": {"N": "4"},
  "Name": {"S": "WindGusts10M"},
  "Precision": {"N": "0.5"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this5" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "m/s"},
  "Description": {"S": "Wind gusts at 50m"},
  "Id": {"N": "5"},
  "Name": {"S": "WindGusts50M"},
  "Precision": {"N": "0.5"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this6" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "m/s"},
  "Description": {"S": "Risk wind speed at 10m"},
  "Id": {"N": "6"},
  "Name": {"S": "RiskWindSpeed"},
  "Precision": {"N": "0.5"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this7" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "m"},
  "Description": {"S": "Risk wave height"},
  "Id": {"N": "7"},
  "Name": {"S": "RiskWaveHeight"},
  "Precision": {"N": "0.1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this8" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "degree, m"},
  "Description": {"S": "Wind-driven wave: direction relative to North and significant wave height"},
  "Id": {"N": "8"},
  "Name": {"S": "Wave"},
  "Precision": {"N": "0.1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this9" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "s"},
  "Description": {"S": "Wind-driven wave: mean period"},
  "Id": {"N": "9"},
  "Name": {"S": "WavePeriod"},
  "Precision": {"N": "1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this10" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "degree, m"},
  "Description": {"S": "Swell: direction relative to North and significant wave height"},
  "Id": {"N": "10"},
  "Name": {"S": "Swell"},
  "Precision": {"N": "0.1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this11" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "s"},
  "Description": {"S": "Swell: mean period"},
  "Id": {"N": "11"},
  "Name": {"S": "SwellPeriod"},
  "Precision": {"N": "1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this12" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "%"},
  "Description": {"S": "Risk of precipitation"},
  "Id": {"N": "12"},
  "Name": {"S": "Precipitation"},
  "Precision": {"N": "1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this13" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "nm"},
  "Description": {"S": "Visibility in 5 classes: good (5+nm), mod/gd (3-5nm), moderate (1-3nm), mod/pr (0.5-1nm), poor (<0.5nm)"},
  "Id": {"N": "13"},
  "Name": {"S": "Visibility"},
  "Precision": {"N": "1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this14" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "%"},
  "Description": {"S": "Relative humidity in %"},
  "Id": {"N": "14"},
  "Name": {"S": "RelativeHumidity"},
  "Precision": {"N": "1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this15" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "degree"},
  "Description": {"S": "Air temperature in degrees Celsius"},
  "Id": {"N": "15"},
  "Name": {"S": "AirTemperature"},
  "Precision": {"N": "1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this16" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "degree"},
  "Description": {"S": "Temperature to which air must be cooled to become saturated with water vapor"},
  "Id": {"N": "16"},
  "Name": {"S": "DewPoint"},
  "Precision": {"N": "1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this17" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "level"},
  "Description": {"S": "Risk of icing in 5 classes: none, light, moderate, severe and very severe"},
  "Id": {"N": "17"},
  "Name": {"S": "Icing"},
  "Precision": {"N": "1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this18" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "%"},
  "Description": {"S": "Amount of the sea surface covered with ice in 10 different levels"},
  "Id": {"N": "18"},
  "Name": {"S": "IceConcentration"},
  "Precision": {"N": "1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this19" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "m"},
  "Description": {"S": "Altitude in which the temperature is at 0 °C (the freezing point of water)"},
  "Id": {"N": "19"},
  "Name": {"S": "FreezingLevel"},
  "Precision": {"N": "1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this20" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "latitude/longitude"},
  "Description": {"S": "Ice berg position in geo-coordinates"},
  "Id": {"N": "20"},
  "Name": {"S": "IceBergPosition"},
  "Precision": {"N": "1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this21" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "degree, m/s"},
  "Description": {"S": "Combined component including ocean, tidal and wind-driven currents with direction and speed"},
  "Id": {"N": "21"},
  "Name": {"S": "Currents"},
  "Precision": {"N": "0.01"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this22" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "degree"},
  "Description": {"S": "Water temperature in degrees Celsius"},
  "Id": {"N": "22"},
  "Name": {"S": "SeaWaterTemperature"},
  "Precision": {"N": "1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this23" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "g/kg"},
  "Description": {"S": "Concentration of salt in seawater"},
  "Id": {"N": "23"},
  "Name": {"S": "SeaWaterSalinity"},
  "Precision": {"N": "1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this24" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "latitude/longitude, type"},
  "Description": {"S": "Weather front data in 3 classes: cold, warm, occluded"},
  "Id": {"N": "24"},
  "Name": {"S": "WeatherFrontData"},
  "Precision": {"N": "1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this25" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "latitude/longitude, type"},
  "Description": {"S": "High / low pressure data"},
  "Id": {"N": "25"},
  "Name": {"S": "HighLowPressureSymbols"},
  "Precision": {"N": "1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this26" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "code"},
  "Description": {"S": "Weather code in 10 classes: clear, fog, drizzle, rain, freezing rain, snow, rain shower, snow shower, hail and thunder"},
  "Id": {"N": "26"},
  "Name": {"S": "WeatherCode"},
  "Precision": {"N": "1"}
}
ITEM
}

resource "aws_dynamodb_table_item" "this27" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "latitude/longitude, m/s"},
  "Description": {"S": "Hurricane track with wind speed"},
  "Id": {"N": "27"},
  "Name": {"S": "Hurricanes"},
  "Precision": {"N": "1"}
}
ITEM
}
