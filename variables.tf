variable "os_management_hub_lifecycle_stage_detach_managed_instances_managements" {
  description = <<EOT
Map of os_management_hub_lifecycle_stage_detach_managed_instances_managements, attributes below
Required:
    - lifecycle_stage_id
    - managed_instance_details (block):
        - managed_instances (required)
        - work_request_details (optional, block):
            - description (optional)
            - display_name (optional)
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    lifecycle_stage_id = string
    managed_instance_details = object({
      managed_instances = list(string)
      work_request_details = optional(object({
        description  = optional(string)
        display_name = optional(string)
      }))
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

