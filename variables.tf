# Global variables

variable "template" {
  description = "Template name"
  default     = "azure-dbforpostgresql_servers"
}

variable "asset_lbnref" {
  description = "Asset lbnref"
}

variable "asset_name" {
  description = "Asset name"
}

variable "default_tags" {
  description = "map of default tags to set on ressources"
  type        = map(string)
  default     = {}
}

variable "custom_tags" {
  description = "map of custom tags to set on ressources"
  type        = map(string)
  default     = {}
}

variable "isprod" {
  description = "activate the monitor on production on Sentinel"
  default     = "false"
}

variable "notify_to" {
  description = "Define notification hooks"
  default     = "@webhook-SGCProd @monitoring-teams"
}

variable "notify_capacity" {
  description = "to who notify capacity alerts"
  default     = ""
}

variable "category" {
  description = "Category of the monitors"
  default     = "228"
}

variable "customer_name" {
  description = "Client name as in Idefix"
}

variable "customer_id" {
  description = "ID of the client in Idefix"
}

variable "team_in_charge" {
  description = "Define the team in charge"
  default     = "Undefined"
}

variable "evaluation_delay" {
  description = "Delay in seconds for the metric evaluation"
  default     = 15
}

variable "new_host_delay" {
  description = "Delay in seconds before monitor new resource"
  default     = 300
}

variable "escalation_message" {
  description = "Default escalation message"
  default     = ""
}

variable "renotify_interval" {
  description = "Delay in minutes before monitor is renotified"
  default     = 40
}

# Datadog monitors variables

## dbforpostgresql_servers_cpu_percent

variable "activated_dbforpostgresql_servers_cpu_percent" {
  description = "If the monitor [dbforpostgresql_servers_cpu_percent] is activated"
  type        = string
  default     = "true"
}

variable "message_dbforpostgresql_servers_cpu_percent" {
  description = "Custom message for monitor [dbforpostgresql_servers_cpu_percent]"
  type        = string

  default = <<EOM
    Verify if CPU usage of DB for PostgreSQL is above the defined threshold during last check period.
    Unit: Percent.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_dbforpostgresql_servers_cpu_percent" {
  description = "Escalation message for monitor [dbforpostgresql_servers_cpu_percent]"
  type        = string
  default     = ""
}

variable "notify_dbforpostgresql_servers_cpu_percent" {
  description = "Define notification hooks for monitor [notify_dbforpostgresql_servers_cpu_percent]"
  default     = ""
}

variable "isprod_dbforpostgresql_servers_cpu_percent" {
  description = "Define whether the monitor [dbforpostgresql_servers_cpu_percent] is in production or not"
  default     = ""
}

variable "irp_dbforpostgresql_servers_cpu_percent" {
  description = "Define the IRP for monitor [dbforpostgresql_servers_cpu_percent]"
  default     = "https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9796"
}

variable "severity_dbforpostgresql_servers_cpu_percent" {
  description = "Define severity for monitor [dbforpostgresql_servers_cpu_percent]"
  default     = "1"
}

variable "category_dbforpostgresql_servers_cpu_percent" {
  description = "Define category for monitor [dbforpostgresql_servers_cpu_percent]"
  default     = "228"
}

variable "timeframe_dbforpostgresql_servers_cpu_percent" {
  description = "Monitor timeframe for monitor [dbforpostgresql_servers_cpu_percent] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_1h"
}

variable "type_dbforpostgresql_servers_cpu_percent" {
  description = "Type for monitor [dbforpostgresql_servers_cpu_percent] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_dbforpostgresql_servers_cpu_percent" {
  description = "Extra tags for monitor [dbforpostgresql_servers_cpu_percent]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_dbforpostgresql_servers_cpu_percent" {
  description = "No data timeframe in minutes for monitor [dbforpostgresql_servers_cpu_percent]"
  default     = 1440
}

variable "notify_no_data_dbforpostgresql_servers_cpu_percent" {
  description = "Will raise no data alert if set to true"
  default     = true
}

variable "threshold_critical_dbforpostgresql_servers_cpu_percent" {
  description = "Monitor [dbforpostgresql_servers_cpu_percent] critical threshold"
  default     = "95"
}

variable "threshold_critical_recovery_dbforpostgresql_servers_cpu_percent" {
  description = "Monitor [dbforpostgresql_servers_cpu_percent] critical recovery threshold"
  default     = "90"
}

## dbforpostgresql_servers_io_consumption_percent

variable "activated_dbforpostgresql_servers_io_consumption_percent" {
  description = "If the monitor [dbforpostgresql_servers_io_consumption_percent] is activated"
  type        = string
  default     = "true"
}

variable "message_dbforpostgresql_servers_io_consumption_percent" {
  description = "Custom message for monitor [dbforpostgresql_servers_io_consumption_percent]"
  type        = string

  default = <<EOM
    Verify if IO percent usage is above the defined threshold during last check period.
    Unit: Percent.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_dbforpostgresql_servers_io_consumption_percent" {
  description = "Escalation message for monitor [dbforpostgresql_servers_io_consumption_percent]"
  type        = string
  default     = ""
}

variable "notify_dbforpostgresql_servers_io_consumption_percent" {
  description = "Define notification hooks for monitor [notify_dbforpostgresql_servers_io_consumption_percent]"
  default     = ""
}

variable "isprod_dbforpostgresql_servers_io_consumption_percent" {
  description = "Define whether the monitor [dbforpostgresql_servers_io_consumption_percent] is in production or not"
  default     = ""
}

variable "irp_dbforpostgresql_servers_io_consumption_percent" {
  description = "Define the IRP for monitor [dbforpostgresql_servers_io_consumption_percent]"
  default     = "https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9793"
}

variable "severity_dbforpostgresql_servers_io_consumption_percent" {
  description = "Define severity for monitor [dbforpostgresql_servers_io_consumption_percent]"
  default     = "1"
}

variable "category_dbforpostgresql_servers_io_consumption_percent" {
  description = "Define category for monitor [dbforpostgresql_servers_io_consumption_percent]"
  default     = "228"
}

variable "timeframe_dbforpostgresql_servers_io_consumption_percent" {
  description = "Monitor timeframe for monitor [dbforpostgresql_servers_io_consumption_percent] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_1h"
}

variable "type_dbforpostgresql_servers_io_consumption_percent" {
  description = "Type for monitor [dbforpostgresql_servers_io_consumption_percent] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_dbforpostgresql_servers_io_consumption_percent" {
  description = "Extra tags for monitor [dbforpostgresql_servers_io_consumption_percent]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_dbforpostgresql_servers_io_consumption_percent" {
  description = "No data timeframe in minutes for monitor [dbforpostgresql_servers_io_consumption_percent]"
  default     = 1440
}

variable "notify_no_data_dbforpostgresql_servers_io_consumption_percent" {
  description = "Will raise no data alert if set to true"
  default     = false
}

variable "threshold_critical_dbforpostgresql_servers_io_consumption_percent" {
  description = "Monitor [dbforpostgresql_servers_io_consumption_percent] critical threshold"
  default     = "99"
}

variable "threshold_critical_recovery_dbforpostgresql_servers_io_consumption_percent" {
  description = "Monitor [dbforpostgresql_servers_io_consumption_percent] critical recovery threshold"
  default     = "90"
}

## dbforpostgresql_servers_memory_percent

variable "activated_dbforpostgresql_servers_memory_percent" {
  description = "If the monitor [dbforpostgresql_servers_memory_percent] is activated"
  type        = string
  default     = "true"
}

variable "message_dbforpostgresql_servers_memory_percent" {
  description = "Custom message for monitor [dbforpostgresql_servers_memory_percent]"
  type        = string

  default = <<EOM
    Verify if memory percent usage of PostgreSQL service is above the defined threshold during last check period.
    Unit: Percent.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_dbforpostgresql_servers_memory_percent" {
  description = "Escalation message for monitor [dbforpostgresql_servers_memory_percent]"
  type        = string
  default     = ""
}

variable "notify_dbforpostgresql_servers_memory_percent" {
  description = "Define notification hooks for monitor [notify_dbforpostgresql_servers_memory_percent]"
  default     = ""
}

variable "isprod_dbforpostgresql_servers_memory_percent" {
  description = "Define whether the monitor [dbforpostgresql_servers_memory_percent] is in production or not"
  default     = ""
}

variable "irp_dbforpostgresql_servers_memory_percent" {
  description = "Define the IRP for monitor [dbforpostgresql_servers_memory_percent]"
  default     = "https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9795"
}

variable "severity_dbforpostgresql_servers_memory_percent" {
  description = "Define severity for monitor [dbforpostgresql_servers_memory_percent]"
  default     = "1"
}

variable "category_dbforpostgresql_servers_memory_percent" {
  description = "Define category for monitor [dbforpostgresql_servers_memory_percent]"
  default     = "228"
}

variable "timeframe_dbforpostgresql_servers_memory_percent" {
  description = "Monitor timeframe for monitor [dbforpostgresql_servers_memory_percent] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_1h"
}

variable "type_dbforpostgresql_servers_memory_percent" {
  description = "Type for monitor [dbforpostgresql_servers_memory_percent] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_dbforpostgresql_servers_memory_percent" {
  description = "Extra tags for monitor [dbforpostgresql_servers_memory_percent]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_dbforpostgresql_servers_memory_percent" {
  description = "No data timeframe in minutes for monitor [dbforpostgresql_servers_memory_percent]"
  default     = 1440
}

variable "notify_no_data_dbforpostgresql_servers_memory_percent" {
  description = "Will raise no data alert if set to true"
  default     = true
}

variable "threshold_critical_dbforpostgresql_servers_memory_percent" {
  description = "Monitor [dbforpostgresql_servers_memory_percent] critical threshold"
  default     = "95"
}

variable "threshold_critical_recovery_dbforpostgresql_servers_memory_percent" {
  description = "Monitor [dbforpostgresql_servers_memory_percent] critical recovery threshold"
  default     = "90"
}

## dbforpostgresql_servers_storage_percent

variable "activated_dbforpostgresql_servers_storage_percent" {
  description = "If the monitor [dbforpostgresql_servers_storage_percent] is activated"
  type        = string
  default     = "true"
}

variable "message_dbforpostgresql_servers_storage_percent" {
  description = "Custom message for monitor [dbforpostgresql_servers_storage_percent]"
  type        = string

  default = <<EOM
    Verify if storage percent usage of PostgreSQL service is above the defined threshold during last check period.
    Unit: Percent.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_dbforpostgresql_servers_storage_percent" {
  description = "Escalation message for monitor [dbforpostgresql_servers_storage_percent]"
  type        = string
  default     = ""
}

variable "notify_dbforpostgresql_servers_storage_percent" {
  description = "Define notification hooks for monitor [notify_dbforpostgresql_servers_storage_percent]"
  default     = ""
}

variable "isprod_dbforpostgresql_servers_storage_percent" {
  description = "Define whether the monitor [dbforpostgresql_servers_storage_percent] is in production or not"
  default     = ""
}

variable "irp_dbforpostgresql_servers_storage_percent" {
  description = "Define the IRP for monitor [dbforpostgresql_servers_storage_percent]"
  default     = "https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9794"
}

variable "severity_dbforpostgresql_servers_storage_percent" {
  description = "Define severity for monitor [dbforpostgresql_servers_storage_percent]"
  default     = "4"
}

variable "category_dbforpostgresql_servers_storage_percent" {
  description = "Define category for monitor [dbforpostgresql_servers_storage_percent]"
  default     = "228"
}

variable "timeframe_dbforpostgresql_servers_storage_percent" {
  description = "Monitor timeframe for monitor [dbforpostgresql_servers_storage_percent] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_1h"
}

variable "type_dbforpostgresql_servers_storage_percent" {
  description = "Type for monitor [dbforpostgresql_servers_storage_percent] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_dbforpostgresql_servers_storage_percent" {
  description = "Extra tags for monitor [dbforpostgresql_servers_storage_percent]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_dbforpostgresql_servers_storage_percent" {
  description = "No data timeframe in minutes for monitor [dbforpostgresql_servers_storage_percent]"
  default     = 1440
}

variable "notify_no_data_dbforpostgresql_servers_storage_percent" {
  description = "Will raise no data alert if set to true"
  default     = false
}

variable "threshold_critical_dbforpostgresql_servers_storage_percent" {
  description = "Monitor [dbforpostgresql_servers_storage_percent] critical threshold"
  default     = "95"
}

variable "threshold_critical_recovery_dbforpostgresql_servers_storage_percent" {
  description = "Monitor [dbforpostgresql_servers_storage_percent] critical recovery threshold"
  default     = "90"
}

##
