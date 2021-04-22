terraform {
  required_version = ">= 0.13"
  required_providers {
    datadog = {
      source = "datadog/datadog"
      version = ">= 2.25"
    }
  }
}

resource "datadog_monitor" "dbforpostgresql_servers_cpu_percent" {
  name  = "[dbforpostgresql_servers service][${var.asset_lbnref}] CPU usage over threshold"
  type  = "query alert"
  count = var.activated_dbforpostgresql_servers_cpu_percent == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_dbforpostgresql_servers_cpu_percent,
    var.notify_dbforpostgresql_servers_cpu_percent != "" ? var.notify_dbforpostgresql_servers_cpu_percent : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_dbforpostgresql_servers_cpu_percent != "" ? var.escalation_message_dbforpostgresql_servers_cpu_percent : var.escalation_message,
  )

  query = "avg(${var.timeframe_dbforpostgresql_servers_cpu_percent}):avg:azure.dbforpostgresql_servers.cpu_percent{lbnid:${var.asset_lbnref}} > ${var.threshold_critical_dbforpostgresql_servers_cpu_percent}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_dbforpostgresql_servers_cpu_percent
    critical          = var.threshold_critical_dbforpostgresql_servers_cpu_percent
  }

  evaluation_delay  = var.evaluation_delay
  new_host_delay    = var.new_host_delay
  no_data_timeframe = var.no_data_timeframe_dbforpostgresql_servers_cpu_percent
  notify_no_data    = var.notify_no_data_dbforpostgresql_servers_cpu_percent
  renotify_interval = 40
  notify_audit      = true
  timeout_h         = 0
  silenced          = {}

  tags = concat(
    [
      "monitor_resource_name:dbforpostgresql_servers_cpu_percent",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_dbforpostgresql_servers_cpu_percent != "" ? var.isprod_dbforpostgresql_servers_cpu_percent : var.isprod,
      )}",
      "severity:${var.severity_dbforpostgresql_servers_cpu_percent}",
      "category:${var.category_dbforpostgresql_servers_cpu_percent}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.type_dbforpostgresql_servers_cpu_percent}",
      "irp:${var.irp_dbforpostgresql_servers_cpu_percent}",
    ],
    var.extra_tags_dbforpostgresql_servers_cpu_percent,
  )
}

# Create a new Datadog dbforpostgresql_servers monitor
resource "datadog_monitor" "dbforpostgresql_servers_io_consumption_percent" {
  name  = "[dbforpostgresql_servers service][${var.asset_lbnref}] IO usage percent is over threshold"
  type  = "query alert"
  count = var.activated_dbforpostgresql_servers_io_consumption_percent == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_dbforpostgresql_servers_io_consumption_percent,
    var.notify_dbforpostgresql_servers_io_consumption_percent != "" ? var.notify_dbforpostgresql_servers_io_consumption_percent : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_dbforpostgresql_servers_io_consumption_percent != "" ? var.escalation_message_dbforpostgresql_servers_io_consumption_percent : var.escalation_message,
  )

  query = "avg(${var.timeframe_dbforpostgresql_servers_io_consumption_percent}):avg:azure.dbforpostgresql_servers.io_consumption_percent{lbnid:${var.asset_lbnref}} >= ${var.threshold_critical_dbforpostgresql_servers_io_consumption_percent}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_dbforpostgresql_servers_io_consumption_percent
    critical          = var.threshold_critical_dbforpostgresql_servers_io_consumption_percent
  }

  evaluation_delay  = var.evaluation_delay
  new_host_delay    = var.new_host_delay
  no_data_timeframe = var.no_data_timeframe_dbforpostgresql_servers_io_consumption_percent
  notify_no_data    = var.notify_no_data_dbforpostgresql_servers_io_consumption_percent
  renotify_interval = 40
  notify_audit      = true
  timeout_h         = 0
  silenced          = {}

  tags = concat(
    [
      "monitor_resource_name:dbforpostgresql_servers_io_consumption_percent",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_dbforpostgresql_servers_io_consumption_percent != "" ? var.isprod_dbforpostgresql_servers_io_consumption_percent : var.isprod,
      )}",
      "severity:${var.severity_dbforpostgresql_servers_io_consumption_percent}",
      "category:${var.category_dbforpostgresql_servers_io_consumption_percent}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.type_dbforpostgresql_servers_io_consumption_percent}",
      "irp:${var.irp_dbforpostgresql_servers_io_consumption_percent}",
    ],
    var.extra_tags_dbforpostgresql_servers_io_consumption_percent,
  )
}

resource "datadog_monitor" "dbforpostgresql_servers_memory_percent" {
  name  = "[dbforpostgresql_servers service][${var.asset_lbnref}] Memory percent usage over threshold"
  type  = "query alert"
  count = var.activated_dbforpostgresql_servers_memory_percent == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_dbforpostgresql_servers_memory_percent,
    var.notify_dbforpostgresql_servers_memory_percent != "" ? var.notify_dbforpostgresql_servers_memory_percent : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_dbforpostgresql_servers_memory_percent != "" ? var.escalation_message_dbforpostgresql_servers_memory_percent : var.escalation_message,
  )

  query = "avg(${var.timeframe_dbforpostgresql_servers_memory_percent}):avg:azure.dbforpostgresql_servers.memory_percent{lbnid:${var.asset_lbnref}} > ${var.threshold_critical_dbforpostgresql_servers_memory_percent}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_dbforpostgresql_servers_memory_percent
    critical          = var.threshold_critical_dbforpostgresql_servers_memory_percent
  }

  evaluation_delay  = var.evaluation_delay
  new_host_delay    = var.new_host_delay
  no_data_timeframe = var.no_data_timeframe_dbforpostgresql_servers_memory_percent
  notify_no_data    = var.notify_no_data_dbforpostgresql_servers_memory_percent
  renotify_interval = 40
  notify_audit      = true
  timeout_h         = 0
  silenced          = {}

  tags = concat(
    [
      "monitor_resource_name:dbforpostgresql_servers_memory_percent",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_dbforpostgresql_servers_memory_percent != "" ? var.isprod_dbforpostgresql_servers_memory_percent : var.isprod,
      )}",
      "severity:${var.severity_dbforpostgresql_servers_memory_percent}",
      "category:${var.category_dbforpostgresql_servers_memory_percent}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.type_dbforpostgresql_servers_memory_percent}",
      "irp:${var.irp_dbforpostgresql_servers_memory_percent}",
    ],
    var.extra_tags_dbforpostgresql_servers_memory_percent,
  )
}

resource "datadog_monitor" "dbforpostgresql_servers_storage_percent" {
  name  = "[dbforpostgresql_servers service][${var.asset_lbnref}] Storage percent usage over threshold"
  type  = "query alert"
  count = var.activated_dbforpostgresql_servers_storage_percent == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_dbforpostgresql_servers_storage_percent,
    var.notify_dbforpostgresql_servers_storage_percent != "" ? var.notify_dbforpostgresql_servers_storage_percent : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_dbforpostgresql_servers_storage_percent != "" ? var.escalation_message_dbforpostgresql_servers_storage_percent : var.escalation_message,
  )

  query = "avg(${var.timeframe_dbforpostgresql_servers_storage_percent}):avg:azure.dbforpostgresql_servers.storage_percent{lbnid:${var.asset_lbnref}} > ${var.threshold_critical_dbforpostgresql_servers_storage_percent}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_dbforpostgresql_servers_storage_percent
    critical          = var.threshold_critical_dbforpostgresql_servers_storage_percent
  }

  evaluation_delay  = var.evaluation_delay
  new_host_delay    = var.new_host_delay
  no_data_timeframe = var.no_data_timeframe_dbforpostgresql_servers_storage_percent
  notify_no_data    = var.notify_no_data_dbforpostgresql_servers_storage_percent
  renotify_interval = 40
  notify_audit      = true
  timeout_h         = 0
  silenced          = {}

  tags = concat(
    [
      "monitor_resource_name:dbforpostgresql_servers_storage_percent",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_dbforpostgresql_servers_storage_percent != "" ? var.isprod_dbforpostgresql_servers_storage_percent : var.isprod,
      )}",
      "severity:${var.severity_dbforpostgresql_servers_storage_percent}",
      "category:${var.category_dbforpostgresql_servers_storage_percent}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.type_dbforpostgresql_servers_storage_percent}",
      "irp:${var.irp_dbforpostgresql_servers_storage_percent}",
    ],
    var.extra_tags_dbforpostgresql_servers_storage_percent,
  )
}

