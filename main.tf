resource "oci_os_management_hub_lifecycle_stage_detach_managed_instances_management" "os_management_hub_lifecycle_stage_detach_managed_instances_managements" {
  for_each = var.os_management_hub_lifecycle_stage_detach_managed_instances_managements

  lifecycle_stage_id = each.value.lifecycle_stage_id

  managed_instance_details {
    managed_instances = each.value.managed_instance_details.managed_instances
    dynamic "work_request_details" {
      for_each = each.value.managed_instance_details.work_request_details != null ? [each.value.managed_instance_details.work_request_details] : []
      content {
        description  = work_request_details.value.description
        display_name = work_request_details.value.display_name
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

