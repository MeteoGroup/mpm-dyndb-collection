variable "prefix" {
  type        = "string"
  description = "Prefix for the table"
}

variable "project" {
  type        = "string"
  description = "Project for the table"
}

variable "tags" {
  type        = "map"
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)"
}
