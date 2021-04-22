# Datadog postgres module

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_datadog"></a> [datadog](#requirement\_datadog) | >= 2.25 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_datadog"></a> [datadog](#provider\_datadog) | >= 2.25 |

## Usage

```hcl
module "datadog_postgres" {
  source        = "linkbynet/postgres/datadog"
  customer_name = "mycustomer"
  customer_id   = 1234
  asset_lbnref  = 1234
  asset_name    = mypostgres
}
```

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [datadog_monitor.dbforpostgresql_servers_cpu_percent](https://registry.terraform.io/providers/datadog/datadog/latest/docs/resources/monitor) | resource |
| [datadog_monitor.dbforpostgresql_servers_io_consumption_percent](https://registry.terraform.io/providers/datadog/datadog/latest/docs/resources/monitor) | resource |
| [datadog_monitor.dbforpostgresql_servers_memory_percent](https://registry.terraform.io/providers/datadog/datadog/latest/docs/resources/monitor) | resource |
| [datadog_monitor.dbforpostgresql_servers_storage_percent](https://registry.terraform.io/providers/datadog/datadog/latest/docs/resources/monitor) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_activated_dbforpostgresql_servers_cpu_percent"></a> [activated\_dbforpostgresql\_servers\_cpu\_percent](#input\_activated\_dbforpostgresql\_servers\_cpu\_percent) | If the monitor [dbforpostgresql\_servers\_cpu\_percent] is activated | `string` | `"true"` | no |
| <a name="input_activated_dbforpostgresql_servers_io_consumption_percent"></a> [activated\_dbforpostgresql\_servers\_io\_consumption\_percent](#input\_activated\_dbforpostgresql\_servers\_io\_consumption\_percent) | If the monitor [dbforpostgresql\_servers\_io\_consumption\_percent] is activated | `string` | `"true"` | no |
| <a name="input_activated_dbforpostgresql_servers_memory_percent"></a> [activated\_dbforpostgresql\_servers\_memory\_percent](#input\_activated\_dbforpostgresql\_servers\_memory\_percent) | If the monitor [dbforpostgresql\_servers\_memory\_percent] is activated | `string` | `"true"` | no |
| <a name="input_activated_dbforpostgresql_servers_storage_percent"></a> [activated\_dbforpostgresql\_servers\_storage\_percent](#input\_activated\_dbforpostgresql\_servers\_storage\_percent) | If the monitor [dbforpostgresql\_servers\_storage\_percent] is activated | `string` | `"true"` | no |
| <a name="input_asset_lbnref"></a> [asset\_lbnref](#input\_asset\_lbnref) | Asset lbnref | `any` | n/a | yes |
| <a name="input_asset_name"></a> [asset\_name](#input\_asset\_name) | Asset name | `any` | n/a | yes |
| <a name="input_category"></a> [category](#input\_category) | Category of the monitors | `string` | `"228"` | no |
| <a name="input_category_dbforpostgresql_servers_cpu_percent"></a> [category\_dbforpostgresql\_servers\_cpu\_percent](#input\_category\_dbforpostgresql\_servers\_cpu\_percent) | Define category for monitor [dbforpostgresql\_servers\_cpu\_percent] | `string` | `"228"` | no |
| <a name="input_category_dbforpostgresql_servers_io_consumption_percent"></a> [category\_dbforpostgresql\_servers\_io\_consumption\_percent](#input\_category\_dbforpostgresql\_servers\_io\_consumption\_percent) | Define category for monitor [dbforpostgresql\_servers\_io\_consumption\_percent] | `string` | `"228"` | no |
| <a name="input_category_dbforpostgresql_servers_memory_percent"></a> [category\_dbforpostgresql\_servers\_memory\_percent](#input\_category\_dbforpostgresql\_servers\_memory\_percent) | Define category for monitor [dbforpostgresql\_servers\_memory\_percent] | `string` | `"228"` | no |
| <a name="input_category_dbforpostgresql_servers_storage_percent"></a> [category\_dbforpostgresql\_servers\_storage\_percent](#input\_category\_dbforpostgresql\_servers\_storage\_percent) | Define category for monitor [dbforpostgresql\_servers\_storage\_percent] | `string` | `"228"` | no |
| <a name="input_custom_tags"></a> [custom\_tags](#input\_custom\_tags) | map of custom tags to set on ressources | `map(string)` | `{}` | no |
| <a name="input_customer_id"></a> [customer\_id](#input\_customer\_id) | ID of the client in Idefix | `any` | n/a | yes |
| <a name="input_customer_name"></a> [customer\_name](#input\_customer\_name) | Client name as in Idefix | `any` | n/a | yes |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | map of default tags to set on ressources | `map(string)` | `{}` | no |
| <a name="input_escalation_message"></a> [escalation\_message](#input\_escalation\_message) | Default escalation message | `string` | `""` | no |
| <a name="input_escalation_message_dbforpostgresql_servers_cpu_percent"></a> [escalation\_message\_dbforpostgresql\_servers\_cpu\_percent](#input\_escalation\_message\_dbforpostgresql\_servers\_cpu\_percent) | Escalation message for monitor [dbforpostgresql\_servers\_cpu\_percent] | `string` | `""` | no |
| <a name="input_escalation_message_dbforpostgresql_servers_io_consumption_percent"></a> [escalation\_message\_dbforpostgresql\_servers\_io\_consumption\_percent](#input\_escalation\_message\_dbforpostgresql\_servers\_io\_consumption\_percent) | Escalation message for monitor [dbforpostgresql\_servers\_io\_consumption\_percent] | `string` | `""` | no |
| <a name="input_escalation_message_dbforpostgresql_servers_memory_percent"></a> [escalation\_message\_dbforpostgresql\_servers\_memory\_percent](#input\_escalation\_message\_dbforpostgresql\_servers\_memory\_percent) | Escalation message for monitor [dbforpostgresql\_servers\_memory\_percent] | `string` | `""` | no |
| <a name="input_escalation_message_dbforpostgresql_servers_storage_percent"></a> [escalation\_message\_dbforpostgresql\_servers\_storage\_percent](#input\_escalation\_message\_dbforpostgresql\_servers\_storage\_percent) | Escalation message for monitor [dbforpostgresql\_servers\_storage\_percent] | `string` | `""` | no |
| <a name="input_evaluation_delay"></a> [evaluation\_delay](#input\_evaluation\_delay) | Delay in seconds for the metric evaluation | `number` | `15` | no |
| <a name="input_extra_tags_dbforpostgresql_servers_cpu_percent"></a> [extra\_tags\_dbforpostgresql\_servers\_cpu\_percent](#input\_extra\_tags\_dbforpostgresql\_servers\_cpu\_percent) | Extra tags for monitor [dbforpostgresql\_servers\_cpu\_percent] | `list(string)` | `[]` | no |
| <a name="input_extra_tags_dbforpostgresql_servers_io_consumption_percent"></a> [extra\_tags\_dbforpostgresql\_servers\_io\_consumption\_percent](#input\_extra\_tags\_dbforpostgresql\_servers\_io\_consumption\_percent) | Extra tags for monitor [dbforpostgresql\_servers\_io\_consumption\_percent] | `list(string)` | `[]` | no |
| <a name="input_extra_tags_dbforpostgresql_servers_memory_percent"></a> [extra\_tags\_dbforpostgresql\_servers\_memory\_percent](#input\_extra\_tags\_dbforpostgresql\_servers\_memory\_percent) | Extra tags for monitor [dbforpostgresql\_servers\_memory\_percent] | `list(string)` | `[]` | no |
| <a name="input_extra_tags_dbforpostgresql_servers_storage_percent"></a> [extra\_tags\_dbforpostgresql\_servers\_storage\_percent](#input\_extra\_tags\_dbforpostgresql\_servers\_storage\_percent) | Extra tags for monitor [dbforpostgresql\_servers\_storage\_percent] | `list(string)` | `[]` | no |
| <a name="input_irp_dbforpostgresql_servers_cpu_percent"></a> [irp\_dbforpostgresql\_servers\_cpu\_percent](#input\_irp\_dbforpostgresql\_servers\_cpu\_percent) | Define the IRP for monitor [dbforpostgresql\_servers\_cpu\_percent] | `string` | `"https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9796"` | no |
| <a name="input_irp_dbforpostgresql_servers_io_consumption_percent"></a> [irp\_dbforpostgresql\_servers\_io\_consumption\_percent](#input\_irp\_dbforpostgresql\_servers\_io\_consumption\_percent) | Define the IRP for monitor [dbforpostgresql\_servers\_io\_consumption\_percent] | `string` | `"https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9793"` | no |
| <a name="input_irp_dbforpostgresql_servers_memory_percent"></a> [irp\_dbforpostgresql\_servers\_memory\_percent](#input\_irp\_dbforpostgresql\_servers\_memory\_percent) | Define the IRP for monitor [dbforpostgresql\_servers\_memory\_percent] | `string` | `"https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9795"` | no |
| <a name="input_irp_dbforpostgresql_servers_storage_percent"></a> [irp\_dbforpostgresql\_servers\_storage\_percent](#input\_irp\_dbforpostgresql\_servers\_storage\_percent) | Define the IRP for monitor [dbforpostgresql\_servers\_storage\_percent] | `string` | `"https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9794"` | no |
| <a name="input_isprod"></a> [isprod](#input\_isprod) | activate the monitor on production on Sentinel | `string` | `"false"` | no |
| <a name="input_isprod_dbforpostgresql_servers_cpu_percent"></a> [isprod\_dbforpostgresql\_servers\_cpu\_percent](#input\_isprod\_dbforpostgresql\_servers\_cpu\_percent) | Define whether the monitor [dbforpostgresql\_servers\_cpu\_percent] is in production or not | `string` | `""` | no |
| <a name="input_isprod_dbforpostgresql_servers_io_consumption_percent"></a> [isprod\_dbforpostgresql\_servers\_io\_consumption\_percent](#input\_isprod\_dbforpostgresql\_servers\_io\_consumption\_percent) | Define whether the monitor [dbforpostgresql\_servers\_io\_consumption\_percent] is in production or not | `string` | `""` | no |
| <a name="input_isprod_dbforpostgresql_servers_memory_percent"></a> [isprod\_dbforpostgresql\_servers\_memory\_percent](#input\_isprod\_dbforpostgresql\_servers\_memory\_percent) | Define whether the monitor [dbforpostgresql\_servers\_memory\_percent] is in production or not | `string` | `""` | no |
| <a name="input_isprod_dbforpostgresql_servers_storage_percent"></a> [isprod\_dbforpostgresql\_servers\_storage\_percent](#input\_isprod\_dbforpostgresql\_servers\_storage\_percent) | Define whether the monitor [dbforpostgresql\_servers\_storage\_percent] is in production or not | `string` | `""` | no |
| <a name="input_message_dbforpostgresql_servers_cpu_percent"></a> [message\_dbforpostgresql\_servers\_cpu\_percent](#input\_message\_dbforpostgresql\_servers\_cpu\_percent) | Custom message for monitor [dbforpostgresql\_servers\_cpu\_percent] | `string` | `"    Verify if CPU usage of DB for PostgreSQL is above the defined threshold during last check period.\n    Unit: Percent.\n    See IRP for more informations.\n  \n"` | no |
| <a name="input_message_dbforpostgresql_servers_io_consumption_percent"></a> [message\_dbforpostgresql\_servers\_io\_consumption\_percent](#input\_message\_dbforpostgresql\_servers\_io\_consumption\_percent) | Custom message for monitor [dbforpostgresql\_servers\_io\_consumption\_percent] | `string` | `"    Verify if IO percent usage is above the defined threshold during last check period.\n    Unit: Percent.\n    See IRP for more informations.\n  \n"` | no |
| <a name="input_message_dbforpostgresql_servers_memory_percent"></a> [message\_dbforpostgresql\_servers\_memory\_percent](#input\_message\_dbforpostgresql\_servers\_memory\_percent) | Custom message for monitor [dbforpostgresql\_servers\_memory\_percent] | `string` | `"    Verify if memory percent usage of PostgreSQL service is above the defined threshold during last check period.\n    Unit: Percent.\n    See IRP for more informations.\n  \n"` | no |
| <a name="input_message_dbforpostgresql_servers_storage_percent"></a> [message\_dbforpostgresql\_servers\_storage\_percent](#input\_message\_dbforpostgresql\_servers\_storage\_percent) | Custom message for monitor [dbforpostgresql\_servers\_storage\_percent] | `string` | `"    Verify if storage percent usage of PostgreSQL service is above the defined threshold during last check period.\n    Unit: Percent.\n    See IRP for more informations.\n  \n"` | no |
| <a name="input_new_host_delay"></a> [new\_host\_delay](#input\_new\_host\_delay) | Delay in seconds before monitor new resource | `number` | `300` | no |
| <a name="input_no_data_timeframe_dbforpostgresql_servers_cpu_percent"></a> [no\_data\_timeframe\_dbforpostgresql\_servers\_cpu\_percent](#input\_no\_data\_timeframe\_dbforpostgresql\_servers\_cpu\_percent) | No data timeframe in minutes for monitor [dbforpostgresql\_servers\_cpu\_percent] | `number` | `1440` | no |
| <a name="input_no_data_timeframe_dbforpostgresql_servers_io_consumption_percent"></a> [no\_data\_timeframe\_dbforpostgresql\_servers\_io\_consumption\_percent](#input\_no\_data\_timeframe\_dbforpostgresql\_servers\_io\_consumption\_percent) | No data timeframe in minutes for monitor [dbforpostgresql\_servers\_io\_consumption\_percent] | `number` | `1440` | no |
| <a name="input_no_data_timeframe_dbforpostgresql_servers_memory_percent"></a> [no\_data\_timeframe\_dbforpostgresql\_servers\_memory\_percent](#input\_no\_data\_timeframe\_dbforpostgresql\_servers\_memory\_percent) | No data timeframe in minutes for monitor [dbforpostgresql\_servers\_memory\_percent] | `number` | `1440` | no |
| <a name="input_no_data_timeframe_dbforpostgresql_servers_storage_percent"></a> [no\_data\_timeframe\_dbforpostgresql\_servers\_storage\_percent](#input\_no\_data\_timeframe\_dbforpostgresql\_servers\_storage\_percent) | No data timeframe in minutes for monitor [dbforpostgresql\_servers\_storage\_percent] | `number` | `1440` | no |
| <a name="input_notify_capacity"></a> [notify\_capacity](#input\_notify\_capacity) | to who notify capacity alerts | `string` | `""` | no |
| <a name="input_notify_dbforpostgresql_servers_cpu_percent"></a> [notify\_dbforpostgresql\_servers\_cpu\_percent](#input\_notify\_dbforpostgresql\_servers\_cpu\_percent) | Define notification hooks for monitor [notify\_dbforpostgresql\_servers\_cpu\_percent] | `string` | `""` | no |
| <a name="input_notify_dbforpostgresql_servers_io_consumption_percent"></a> [notify\_dbforpostgresql\_servers\_io\_consumption\_percent](#input\_notify\_dbforpostgresql\_servers\_io\_consumption\_percent) | Define notification hooks for monitor [notify\_dbforpostgresql\_servers\_io\_consumption\_percent] | `string` | `""` | no |
| <a name="input_notify_dbforpostgresql_servers_memory_percent"></a> [notify\_dbforpostgresql\_servers\_memory\_percent](#input\_notify\_dbforpostgresql\_servers\_memory\_percent) | Define notification hooks for monitor [notify\_dbforpostgresql\_servers\_memory\_percent] | `string` | `""` | no |
| <a name="input_notify_dbforpostgresql_servers_storage_percent"></a> [notify\_dbforpostgresql\_servers\_storage\_percent](#input\_notify\_dbforpostgresql\_servers\_storage\_percent) | Define notification hooks for monitor [notify\_dbforpostgresql\_servers\_storage\_percent] | `string` | `""` | no |
| <a name="input_notify_no_data_dbforpostgresql_servers_cpu_percent"></a> [notify\_no\_data\_dbforpostgresql\_servers\_cpu\_percent](#input\_notify\_no\_data\_dbforpostgresql\_servers\_cpu\_percent) | Will raise no data alert if set to true | `bool` | `true` | no |
| <a name="input_notify_no_data_dbforpostgresql_servers_io_consumption_percent"></a> [notify\_no\_data\_dbforpostgresql\_servers\_io\_consumption\_percent](#input\_notify\_no\_data\_dbforpostgresql\_servers\_io\_consumption\_percent) | Will raise no data alert if set to true | `bool` | `false` | no |
| <a name="input_notify_no_data_dbforpostgresql_servers_memory_percent"></a> [notify\_no\_data\_dbforpostgresql\_servers\_memory\_percent](#input\_notify\_no\_data\_dbforpostgresql\_servers\_memory\_percent) | Will raise no data alert if set to true | `bool` | `true` | no |
| <a name="input_notify_no_data_dbforpostgresql_servers_storage_percent"></a> [notify\_no\_data\_dbforpostgresql\_servers\_storage\_percent](#input\_notify\_no\_data\_dbforpostgresql\_servers\_storage\_percent) | Will raise no data alert if set to true | `bool` | `false` | no |
| <a name="input_notify_to"></a> [notify\_to](#input\_notify\_to) | Define notification hooks | `string` | `"@webhook-SGCProd @monitoring-teams"` | no |
| <a name="input_renotify_interval"></a> [renotify\_interval](#input\_renotify\_interval) | Delay in minutes before monitor is renotified | `number` | `40` | no |
| <a name="input_severity_dbforpostgresql_servers_cpu_percent"></a> [severity\_dbforpostgresql\_servers\_cpu\_percent](#input\_severity\_dbforpostgresql\_servers\_cpu\_percent) | Define severity for monitor [dbforpostgresql\_servers\_cpu\_percent] | `string` | `"1"` | no |
| <a name="input_severity_dbforpostgresql_servers_io_consumption_percent"></a> [severity\_dbforpostgresql\_servers\_io\_consumption\_percent](#input\_severity\_dbforpostgresql\_servers\_io\_consumption\_percent) | Define severity for monitor [dbforpostgresql\_servers\_io\_consumption\_percent] | `string` | `"1"` | no |
| <a name="input_severity_dbforpostgresql_servers_memory_percent"></a> [severity\_dbforpostgresql\_servers\_memory\_percent](#input\_severity\_dbforpostgresql\_servers\_memory\_percent) | Define severity for monitor [dbforpostgresql\_servers\_memory\_percent] | `string` | `"1"` | no |
| <a name="input_severity_dbforpostgresql_servers_storage_percent"></a> [severity\_dbforpostgresql\_servers\_storage\_percent](#input\_severity\_dbforpostgresql\_servers\_storage\_percent) | Define severity for monitor [dbforpostgresql\_servers\_storage\_percent] | `string` | `"4"` | no |
| <a name="input_team_in_charge"></a> [team\_in\_charge](#input\_team\_in\_charge) | Define the team in charge | `string` | `"Undefined"` | no |
| <a name="input_template"></a> [template](#input\_template) | Template name | `string` | `"azure-dbforpostgresql_servers"` | no |
| <a name="input_threshold_critical_dbforpostgresql_servers_cpu_percent"></a> [threshold\_critical\_dbforpostgresql\_servers\_cpu\_percent](#input\_threshold\_critical\_dbforpostgresql\_servers\_cpu\_percent) | Monitor [dbforpostgresql\_servers\_cpu\_percent] critical threshold | `string` | `"95"` | no |
| <a name="input_threshold_critical_dbforpostgresql_servers_io_consumption_percent"></a> [threshold\_critical\_dbforpostgresql\_servers\_io\_consumption\_percent](#input\_threshold\_critical\_dbforpostgresql\_servers\_io\_consumption\_percent) | Monitor [dbforpostgresql\_servers\_io\_consumption\_percent] critical threshold | `string` | `"99"` | no |
| <a name="input_threshold_critical_dbforpostgresql_servers_memory_percent"></a> [threshold\_critical\_dbforpostgresql\_servers\_memory\_percent](#input\_threshold\_critical\_dbforpostgresql\_servers\_memory\_percent) | Monitor [dbforpostgresql\_servers\_memory\_percent] critical threshold | `string` | `"95"` | no |
| <a name="input_threshold_critical_dbforpostgresql_servers_storage_percent"></a> [threshold\_critical\_dbforpostgresql\_servers\_storage\_percent](#input\_threshold\_critical\_dbforpostgresql\_servers\_storage\_percent) | Monitor [dbforpostgresql\_servers\_storage\_percent] critical threshold | `string` | `"95"` | no |
| <a name="input_threshold_critical_recovery_dbforpostgresql_servers_cpu_percent"></a> [threshold\_critical\_recovery\_dbforpostgresql\_servers\_cpu\_percent](#input\_threshold\_critical\_recovery\_dbforpostgresql\_servers\_cpu\_percent) | Monitor [dbforpostgresql\_servers\_cpu\_percent] critical recovery threshold | `string` | `"90"` | no |
| <a name="input_threshold_critical_recovery_dbforpostgresql_servers_io_consumption_percent"></a> [threshold\_critical\_recovery\_dbforpostgresql\_servers\_io\_consumption\_percent](#input\_threshold\_critical\_recovery\_dbforpostgresql\_servers\_io\_consumption\_percent) | Monitor [dbforpostgresql\_servers\_io\_consumption\_percent] critical recovery threshold | `string` | `"90"` | no |
| <a name="input_threshold_critical_recovery_dbforpostgresql_servers_memory_percent"></a> [threshold\_critical\_recovery\_dbforpostgresql\_servers\_memory\_percent](#input\_threshold\_critical\_recovery\_dbforpostgresql\_servers\_memory\_percent) | Monitor [dbforpostgresql\_servers\_memory\_percent] critical recovery threshold | `string` | `"90"` | no |
| <a name="input_threshold_critical_recovery_dbforpostgresql_servers_storage_percent"></a> [threshold\_critical\_recovery\_dbforpostgresql\_servers\_storage\_percent](#input\_threshold\_critical\_recovery\_dbforpostgresql\_servers\_storage\_percent) | Monitor [dbforpostgresql\_servers\_storage\_percent] critical recovery threshold | `string` | `"90"` | no |
| <a name="input_timeframe_dbforpostgresql_servers_cpu_percent"></a> [timeframe\_dbforpostgresql\_servers\_cpu\_percent](#input\_timeframe\_dbforpostgresql\_servers\_cpu\_percent) | Monitor timeframe for monitor [dbforpostgresql\_servers\_cpu\_percent] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_1h"` | no |
| <a name="input_timeframe_dbforpostgresql_servers_io_consumption_percent"></a> [timeframe\_dbforpostgresql\_servers\_io\_consumption\_percent](#input\_timeframe\_dbforpostgresql\_servers\_io\_consumption\_percent) | Monitor timeframe for monitor [dbforpostgresql\_servers\_io\_consumption\_percent] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_1h"` | no |
| <a name="input_timeframe_dbforpostgresql_servers_memory_percent"></a> [timeframe\_dbforpostgresql\_servers\_memory\_percent](#input\_timeframe\_dbforpostgresql\_servers\_memory\_percent) | Monitor timeframe for monitor [dbforpostgresql\_servers\_memory\_percent] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_1h"` | no |
| <a name="input_timeframe_dbforpostgresql_servers_storage_percent"></a> [timeframe\_dbforpostgresql\_servers\_storage\_percent](#input\_timeframe\_dbforpostgresql\_servers\_storage\_percent) | Monitor timeframe for monitor [dbforpostgresql\_servers\_storage\_percent] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_1h"` | no |
| <a name="input_type_dbforpostgresql_servers_cpu_percent"></a> [type\_dbforpostgresql\_servers\_cpu\_percent](#input\_type\_dbforpostgresql\_servers\_cpu\_percent) | Type for monitor [dbforpostgresql\_servers\_cpu\_percent] among incident, information | `string` | `"incident"` | no |
| <a name="input_type_dbforpostgresql_servers_io_consumption_percent"></a> [type\_dbforpostgresql\_servers\_io\_consumption\_percent](#input\_type\_dbforpostgresql\_servers\_io\_consumption\_percent) | Type for monitor [dbforpostgresql\_servers\_io\_consumption\_percent] among incident, information | `string` | `"incident"` | no |
| <a name="input_type_dbforpostgresql_servers_memory_percent"></a> [type\_dbforpostgresql\_servers\_memory\_percent](#input\_type\_dbforpostgresql\_servers\_memory\_percent) | Type for monitor [dbforpostgresql\_servers\_memory\_percent] among incident, information | `string` | `"incident"` | no |
| <a name="input_type_dbforpostgresql_servers_storage_percent"></a> [type\_dbforpostgresql\_servers\_storage\_percent](#input\_type\_dbforpostgresql\_servers\_storage\_percent) | Type for monitor [dbforpostgresql\_servers\_storage\_percent] among incident, information | `string` | `"incident"` | no |

## Outputs

No outputs.
