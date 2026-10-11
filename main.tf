data "databricks_supervisor_agent_tools" "supervisor_agent_tools_lookup" {
  for_each = var.supervisor_agent_tools_lookup

  parent          = each.value.parent
  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

