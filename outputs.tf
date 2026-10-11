output "os_management_hub_lifecycle_stage_detach_managed_instances_managements_id" {
  description = "Map of id values across all os_management_hub_lifecycle_stage_detach_managed_instances_managements, keyed the same as var.os_management_hub_lifecycle_stage_detach_managed_instances_managements except keys with no id are omitted"
  value       = { for k, v in oci_os_management_hub_lifecycle_stage_detach_managed_instances_management.os_management_hub_lifecycle_stage_detach_managed_instances_managements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "os_management_hub_lifecycle_stage_detach_managed_instances_managements_lifecycle_stage_id" {
  description = "Map of lifecycle_stage_id values across all os_management_hub_lifecycle_stage_detach_managed_instances_managements, keyed the same as var.os_management_hub_lifecycle_stage_detach_managed_instances_managements except keys with no lifecycle_stage_id are omitted"
  value       = { for k, v in oci_os_management_hub_lifecycle_stage_detach_managed_instances_management.os_management_hub_lifecycle_stage_detach_managed_instances_managements : k => v.lifecycle_stage_id if v.lifecycle_stage_id != null && length(v.lifecycle_stage_id) > 0 }
}
output "os_management_hub_lifecycle_stage_detach_managed_instances_managements_managed_instance_details" {
  description = "Map of managed_instance_details values across all os_management_hub_lifecycle_stage_detach_managed_instances_managements, keyed the same as var.os_management_hub_lifecycle_stage_detach_managed_instances_managements except keys with no managed_instance_details are omitted"
  value       = { for k, v in oci_os_management_hub_lifecycle_stage_detach_managed_instances_management.os_management_hub_lifecycle_stage_detach_managed_instances_managements : k => one(v.managed_instance_details) if v.managed_instance_details != null && length(v.managed_instance_details) > 0 }
}

