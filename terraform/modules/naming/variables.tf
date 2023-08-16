variable "resource_type" {
  type        = string
  default     = "generic"
  description = "Resource type for determining naming pattern."
  validation {
    condition     = contains(["generic", "storageAccount"], var.resource_type)
    error_message = "Resource type must be one of the following values: generic, storageAccount."
  }
}

variable "org" {
  type        = string
  default     = "scrm"
  description = "Short name of the organization."
}

variable "env" {
  type        = string
  description = "Environment that this resource will be associated with."
  validation {
    condition     = contains(["dev", "tst", "stg", "prd", "inf"], var.env)
    error_message = "Environment code must be one of the following values: dev, tst, stg, prd, inf."
  }
}

variable "workload" {
  type        = string
  description = "Workload that this resource will be associated with."
  validation {
    condition     = length(var.workload) == 6
    error_message = "Workload value must be exactly 6 characters."
  }
}

variable "instance" {
  type        = string
  default     = "1"
  description = "Suffix appended to the name of this resource."
}

variable "organization_long_name" {
  type        = string
  default     = null
  description = "Override the long organization name instead of looking up from file."
}

variable "workload_long_name" {
  type        = string
  default     = null
  description = "Override the long workload name instead of looking up from file."
}