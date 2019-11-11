data "aws_dynamodb_table" "table" {
  name = "${var.table_name}"
}

data "aws_dynamodb_table" "table_forecastweatherelement_v2" {
  name = "${var.table_forecastweatherelement_v2}"
}

data "aws_dynamodb_table" "table_tenant_registrations" {
  name = "${var.table_tenant_reg_name}"
}

data "aws_dynamodb_table" "maersk_route_danger_categories" {
  name = "${var.table_route_danger_categories}"
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

resource "aws_dynamodb_table_item" "table_package_subscriptions" {
  table_name = "${data.aws_dynamodb_table.table_package_subscriptions.name}"
  hash_key   = "${data.aws_dynamodb_table.table_package_subscriptions.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_package_subscriptions.range_key}"

  item = <<ITEM
{
  "Areas": {"L":[{"M":{"Definition":{"M":{"geometry":{"M":{"coordinates":{"L":[{"L":[{"L":[{"N":"-180"},{"N":"-90"}]},{"L":[{"N":"-180"},{"N":"90"}]},{"L":[{"N":"180"},{"N":"90"}]},{"L":[{"N":"180"},{"N":"-90"}]},{"L":[{"N":"-180"},{"N":"-90"}]}]}]},"type":{"S":"Polygon"}}},"properties":{"M":{}},"type":{"S":"Feature"}}},"Elements":{"L":[{"M":{"Resolution":{"N":"2.5"},"WeatherElement":{"N":"0"}}},{"M":{"Resolution":{"N":"2.5"},"WeatherElement":{"N":"2"}}}]},"ForecastLength":{"N":"48"}}}]},
  "CreatedDate": {"S":"0001-01-01T00:00:00.000Z"},
  "Deleted":{"N":"0"},
  "Delivery":{"M":{"Method":{"S":"Email"},"MethodOptions":{"M":{"EmailFrom":{"S":"shipforecast@meteogroup.com"},"EmailTo":{"S":"shipforecast@meteogroup.com"}}},"Type":{"S":"Schedule"},"TypeOptions":{"M":{"Expression":{"S":"* * * * *"},"StartFrom":{"S":"2019-06-17T11:16:56.185907Z"}}}}},
  "Id":{"S":"M2ZhY2M2MmItNzMyOS00ODJkLTlkM2ItNzY2YzdjNzYyZTk2"},
  "Imo":{"S":"123456"},
  "RowVersion":{"N":"1"},
  "UpdatedDate":{"S":"2019-06-17T11:16:56.186Z"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
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

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this28" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "degree, m/s"},
  "Description": {"S": "Wind speed at 30m with direction relative to North"},
  "Id": {"N": "28"},
  "Name": {"S": "Wind30M"},
  "Precision": {"N": "0.5"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this29" {
  table_name = "${data.aws_dynamodb_table.table.name}"
  hash_key   = "${data.aws_dynamodb_table.table.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "kg/m^3"},
  "Description": {"S": "The function of sea water salinity, temperature and pressure"},
  "Id": {"N": "29"},
  "Name": {"S": "SeaWaterDensity"},
  "Precision": {"N": "0.5"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this00" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "hPa"},
  "Description": {"S": "Surface pressure in hPa/millibars"},
  "Id": {"N": "0"},
  "Name": {"S": "Pressure"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this01" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "m"},
  "Description": {"S": "500hPa height in meters"},
  "Id": {"N": "1"},
  "Name": {"S": "HPa500"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this02" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "degree, m/s"},
  "Description": {"S": "Wind speed at 10m with direction relative to North"},
  "Id": {"N": "2"},
  "Name": {"S": "Wind10M"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this03" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "degree, m/s"},
  "Description": {"S": "Wind speed at 50m with direction relative to North"},
  "Id": {"N": "3"},
  "Name": {"S": "Wind50M"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this04" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "m/s"},
  "Description": {"S": "Wind gusts at 10m"},
  "Id": {"N": "4"},
  "Name": {"S": "WindGusts10M"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this05" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "m/s"},
  "Description": {"S": "Wind gusts at 50m"},
  "Id": {"N": "5"},
  "Name": {"S": "WindGusts50M"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this06" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "m/s"},
  "Description": {"S": "Risk wind speed at 10m"},
  "Id": {"N": "6"},
  "Name": {"S": "RiskWindSpeed"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this07" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "m"},
  "Description": {"S": "Risk wave height"},
  "Id": {"N": "7"},
  "Name": {"S": "RiskWaveHeight"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this08" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "degree, m"},
  "Description": {"S": "Wind-driven wave: direction relative to North and significant wave height"},
  "Id": {"N": "8"},
  "Name": {"S": "Wave"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this09" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "s"},
  "Description": {"S": "Wind-driven wave: mean period"},
  "Id": {"N": "9"},
  "Name": {"S": "WavePeriod"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this010" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "degree, m"},
  "Description": {"S": "Swell: direction relative to North and significant wave height"},
  "Id": {"N": "10"},
  "Name": {"S": "Swell"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this011" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "s"},
  "Description": {"S": "Swell: mean period"},
  "Id": {"N": "11"},
  "Name": {"S": "SwellPeriod"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this012" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "%"},
  "Description": {"S": "Risk of precipitation"},
  "Id": {"N": "12"},
  "Name": {"S": "Precipitation"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this013" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "nm"},
  "Description": {"S": "Visibility in 5 classes: good (5+nm), mod/gd (3-5nm), moderate (1-3nm), mod/pr (0.5-1nm), poor (<0.5nm)"},
  "Id": {"N": "13"},
  "Name": {"S": "Visibility"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this014" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "%"},
  "Description": {"S": "Relative humidity in %"},
  "Id": {"N": "14"},
  "Name": {"S": "RelativeHumidity"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this015" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "degree"},
  "Description": {"S": "Air temperature in degrees Celsius"},
  "Id": {"N": "15"},
  "Name": {"S": "AirTemperature"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this016" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "degree"},
  "Description": {"S": "Temperature to which air must be cooled to become saturated with water vapor"},
  "Id": {"N": "16"},
  "Name": {"S": "DewPoint"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this017" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "level"},
  "Description": {"S": "Risk of icing in 5 classes: none, light, moderate, severe and very severe"},
  "Id": {"N": "17"},
  "Name": {"S": "Icing"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this018" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "%"},
  "Description": {"S": "Amount of the sea surface covered with ice in 10 different levels"},
  "Id": {"N": "18"},
  "Name": {"S": "IceConcentration"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this019" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "m"},
  "Description": {"S": "Altitude in which the temperature is at 0 °C (the freezing point of water)"},
  "Id": {"N": "19"},
  "Name": {"S": "FreezingLevel"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this020" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "latitude/longitude"},
  "Description": {"S": "Ice berg position in geo-coordinates"},
  "Id": {"N": "20"},
  "Name": {"S": "IceBergPosition"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this021" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "degree, m/s"},
  "Description": {"S": "Combined component including ocean, tidal and wind-driven currents with direction and speed"},
  "Id": {"N": "21"},
  "Name": {"S": "Currents"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this022" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "degree"},
  "Description": {"S": "Water temperature in degrees Celsius"},
  "Id": {"N": "22"},
  "Name": {"S": "SeaWaterTemperature"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this023" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "g/kg"},
  "Description": {"S": "Concentration of salt in seawater"},
  "Id": {"N": "23"},
  "Name": {"S": "SeaWaterSalinity"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this024" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "latitude/longitude, type"},
  "Description": {"S": "Weather front data in 3 classes: cold, warm, occluded"},
  "Id": {"N": "24"},
  "Name": {"S": "WeatherFrontData"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this025" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "latitude/longitude, type"},
  "Description": {"S": "High / low pressure data"},
  "Id": {"N": "25"},
  "Name": {"S": "HighLowPressureSymbols"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this026" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "code"},
  "Description": {"S": "Weather code in 10 classes: clear, fog, drizzle, rain, freezing rain, snow, rain shower, snow shower, hail and thunder"},
  "Id": {"N": "26"},
  "Name": {"S": "WeatherCode"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this027" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "latitude/longitude, m/s"},
  "Description": {"S": "Hurricane track with wind speed"},
  "Id": {"N": "27"},
  "Name": {"S": "Hurricanes"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this028" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "degree, m/s"},
  "Description": {"S": "Wind speed at 30m with direction relative to North"},
  "Id": {"N": "28"},
  "Name": {"S": "Wind30M"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "this029" {
  table_name = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.name}"
  hash_key   = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.hash_key}"
  range_key  = "${data.aws_dynamodb_table.table_forecastweatherelement_v2.range_key}"

  item = <<ITEM
{
  "DataType": {"S": "kg/m^3"},
  "Description": {"S": "The function of sea water salinity, temperature and pressure"},
  "Id": {"N": "29"},
  "Name": {"S": "SeaWaterDensity"}
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories0" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{
  "Id": { "N": "0" },
  "Code": { "N": "42" },
  "ClassCode": { "S": "DEPARE" },
  "Name": { "S": "Depth area" },
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories1" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{
  "Id": { "N": "1" }, 
  "Code": { "N": "46" }, 
  "ClassCode": { "S": "DRGARE" }, 
  "Name": { "S": "Dredged area" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories2" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "2" },
  "Code": { "N": "57" },
  "ClassCode": { "S": "FLODOC" },
  "Name": { "S": "Floating dock" },
  "Severity": { "N": "2" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories3" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "3" }, 
  "Code": { "N": "65" }, 
  "ClassCode": { "S": "HULKES" }, 
  "Name": { "S": "Hulk" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories4" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "4" },  
  "Code": { "N": "71" },
  "ClassCode": { "S": "LNDARE" },
  "Name": { "S": "Land area" },
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories5" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "5" }, 
  "Code": { "N": "95" }, 
  "ClassCode": { "S": "PONTON" }, 
  "Name": { "S": "Pontoon" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories6" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "6" }, 
  "Code": { "N": "154" }, 
  "ClassCode": { "S": "UNSARE" }, 
  "Name": { "S": "Unsurveyed area" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories7" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "7" }, 
  "Code": { "N": "122" }, 
  "ClassCode": { "S": "SLCONS" }, 
  "Name": { "S": "Shoreline construction" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories8" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "100" }, 
  "Code": { "N": "5" }, 
  "ClassCode": { "S": "BCNCAR" }, 
  "Name": { "S": "Beacon, cardinal" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories9" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "101" }, 
  "Code": { "N": "6" }, 
  "ClassCode": { "S": "BCNISD" }, 
  "Name": { "S": "Beacon, isolated danger" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories10" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "102" }, 
  "Code": { "N": "7" }, 
  "ClassCode": { "S": "BCNLAT" }, 
  "Name": { "S": "Beacon, lateral" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories11" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "103" }, 
  "Code": { "N": "8" }, 
  "ClassCode": { "S": "BCNSAW" }, 
  "Name": { "S": "Beacon, safe water" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories12" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "104" }, 
  "Code": { "N": "9" }, 
  "ClassCode": { "S": "BCNSPP" }, 
  "Name": { "S": "Beacon, special purpose/general" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories13" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "105" }, 
  "Code": { "N": "14" }, 
  "ClassCode": { "S": "BOYCAR" }, 
  "Name": { "S": "Buoy, cardinal" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories14" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "106" }, 
  "Code": { "N": "15" }, 
  "ClassCode": { "S": "BOYINB" }, 
  "Name": { "S": "Buoy, installation" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories15" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "107" }, 
  "Code": { "N": "16" }, 
  "ClassCode": { "S": "BOYISD" }, 
  "Name": { "S": "Buoy, isolated danger" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories16" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "108" }, 
  "Code": { "N": "17" }, 
  "ClassCode": { "S": "BOYLAT" }, 
  "Name": { "S": "Buoy, lateral" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories17" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "109" }, 
  "Code": { "N": "18" }, 
  "ClassCode": { "S": "BOYSAW" }, 
  "Name": { "S": "Buoy, safe water" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories18" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "110" }, 
  "Code": { "N": "19" }, 
  "ClassCode": { "S": "BOYSPP" }, 
  "Name": { "S": "Buoy, special purpose/general" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories19" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "111" }, 
  "Code": { "N": "11" }, 
  "ClassCode": { "S": "BRIDGE" }, 
  "Name": { "S": "Bridge" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories20" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "112" }, 
  "Code": { "N": "21" }, 
  "ClassCode": { "S": "CBLOHD" }, 
  "Name": { "S": "Cable, overhead" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories21" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "113" }, 
  "Code": { "N": "39" }, 
  "ClassCode": { "S": "DAYMAR" }, 
  "Name": { "S": "Daymark" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories22" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "114" }, 
  "Code": { "N": "93" }, 
  "ClassCode": { "S": "PIPOHD" }, 
  "Name": { "S": "Pipeline, overhead" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories23" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "115" }, 
  "Code": { "N": "34" }, 
  "ClassCode": { "S": "CONVYR" }, 
  "Name": { "S": "Conveyor" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories24" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "116" }, 
  "Code": { "N": "84" }, 
  "ClassCode": { "S": "MORFAC" }, 
  "Name": { "S": "Mooring/Warping facility" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories25" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "117" }, 
  "Code": { "N": "163" }, 
  "ClassCode": { "S": "NEWOBJ" }, 
  "Name": { "S": "New object" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories26" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "118" }, 
  "Code": { "N": "55" }, 
  "ClassCode": { "S": "FSHFAC" }, 
  "Name": { "S": "Fishing facility" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories27" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "119" }, 
  "Code": { "N": "66" }, 
  "ClassCode": { "S": "ICEARE" }, 
  "Name": { "S": "Ice area" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories28" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "120" }, 
  "Code": { "N": "76" }, 
  "ClassCode": { "S": "LITFLT" }, 
  "Name": { "S": "Light float" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories29" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "121" }, 
  "Code": { "N": "77" }, 
  "ClassCode": { "S": "LITVES" }, 
  "Name": { "S": "Light vessel" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories30" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "122" }, 
  "Code": { "N": "80" }, 
  "ClassCode": { "S": "LOGPON" }, 
  "Name": { "S": "Log pond" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories31" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "123" }, 
  "Code": { "N": "87" }, 
  "ClassCode": { "S": "OFSPLF" }, 
  "Name": { "S": "Offshore platform" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories32" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "124" }, 
  "Code": { "N": "89" }, 
  "ClassCode": { "S": "OILBAR" }, 
  "Name": { "S": "Oil barrier" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories33" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "125" }, 
  "Code": { "N": "90" }, 
  "ClassCode": { "S": "PILPNT" }, 
  "Name": { "S": "Pile" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories34" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "126" }, 
  "Code": { "N": "98" }, 
  "ClassCode": { "S": "PYLONS" }, 
  "Name": { "S": "Pylon/bridge support" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories35" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "127" }, 
  "Code": { "N": "86" }, 
  "ClassCode": { "S": "OBSTRN" }, 
  "Name": { "S": "Obstruction" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories36" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "128" }, 
  "Code": { "N": "153" }, 
  "ClassCode": { "S": "UWTROC" }, 
  "Name": { "S": "Underwater/awash rock" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories37" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "129" }, 
  "Code": { "N": "159" }, 
  "ClassCode": { "S": "WRECKS" },
  "Name": { "S": "Wreck" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories38" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "130" }, 
  "Code": { "N": "129" }, 
  "ClassCode": { "S": "SOUNDG" }, 
  "Name": { "S": "Sounding" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories39" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "200" },
  "Code": { "N": "150" }, 
  "ClassCode": { "S": "TSEZNE" }, 
  "Name": { "S": "Traffic separation zone" }, 
  "Severity": { "N": "2" }
}
ITEM

  #lifecycle {
  #  ignore_changes = ["item"]
  #}
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories40" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{
  "Id": { "N": "201" }, 
  "Code": { "N": "68" }, 
  "ClassCode": { "S": "ISTZNE" }, 
  "Name": { "S": "Inshore traffic zone" }, 
  "Severity": { "N": "2" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories41" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "202" }, 
  "Code": { "N": "112" }, 
  "ClassCode": { "S": "RESARE" }, 
  "Name": { "S": "Restricted area" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories42" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{
  "Id": { "N": "203" }, 
  "Code": { "N": "27" }, 
  "ClassCode": { "S": "CTNARE" }, 
  "Name": { "S": "Caution area" }, 
  "Severity": { "N": "2" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories43" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "204" }, 
  "Code": { "N": "88" }, 
  "ClassCode": { "S": "OSPARE" }, 
  "Name": { "S": "Offshore production area" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories44" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "205" }, 
  "Code": { "N": "112" }, 
  "ClassCode": { "S": "RESARE" }, 
  "Name": { "S": "Restricted area" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories45" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "206" }, 
  "Code": { "N": "83" }, 
  "ClassCode": { "S": "MIPARE" }, 
  "Name": { "S": "Military practice area" }, 
  "Severity": { "N": "2" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories46" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "207" }, 
  "Code": { "N": "120" }, 
  "ClassCode": { "S": "SPLARE" }, 
  "Name": { "S": "Sea-plane landing area" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories47" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "208" }, 
  "Code": { "N": "133" }, 
  "ClassCode": { "S": "SUBTLN" }, 
  "Name": { "S": "Submarine transit lane" }, 
  "Severity": { "N": "2" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories48" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "209" }, 
  "Code": { "N": "4" }, 
  "ClassCode": { "S": "ACHARE" },
  "Name": { "S": "Anchorage area" }, 
  "Severity": { "N": "2" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories49" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "210" }, 
  "Code": { "N": "82" }, 
  "ClassCode": { "S": "MARCUL" }, 
  "Name": { "S": "Marine farm/culture" }, 
  "Severity": { "N": "2" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}

resource "aws_dynamodb_table_item" "maersk_route_danger_categories50" {
  table_name = "${data.aws_dynamodb_table.maersk_route_danger_categories.name}"
  hash_key   = "${data.aws_dynamodb_table.maersk_route_danger_categories.hash_key}"

  item = <<ITEM
{ 
  "Id": { "N": "211" }, 
  "Code": { "N": "112" }, 
  "ClassCode": { "S": "RESARE" }, 
  "Name": { "S": "Restricted area" }, 
  "Severity": { "N": "4" }
}
ITEM

  lifecycle {
    ignore_changes = ["item"]
  }
}
