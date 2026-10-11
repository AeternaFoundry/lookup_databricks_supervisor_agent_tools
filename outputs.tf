output "supervisor_agent_tools_lookup_page_size" {
  description = "Map of page_size values across all supervisor_agent_tools_lookup, keyed the same as var.supervisor_agent_tools_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_supervisor_agent_tools.supervisor_agent_tools_lookup : k => v.page_size if v.page_size != null }
}
output "supervisor_agent_tools_lookup_parent" {
  description = "Map of parent values across all supervisor_agent_tools_lookup, keyed the same as var.supervisor_agent_tools_lookup except keys with no parent are omitted"
  value       = { for k, v in data.databricks_supervisor_agent_tools.supervisor_agent_tools_lookup : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "supervisor_agent_tools_lookup_provider_config" {
  description = "Map of provider_config values across all supervisor_agent_tools_lookup, keyed the same as var.supervisor_agent_tools_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_supervisor_agent_tools.supervisor_agent_tools_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "supervisor_agent_tools_lookup_tools" {
  description = "Map of tools values across all supervisor_agent_tools_lookup, keyed the same as var.supervisor_agent_tools_lookup except keys with no tools are omitted"
  value       = { for k, v in data.databricks_supervisor_agent_tools.supervisor_agent_tools_lookup : k => v.tools if v.tools != null && length(v.tools) > 0 }
}

