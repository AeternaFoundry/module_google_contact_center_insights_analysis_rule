output "contact_center_insights_analysis_rules_id" {
  description = "Map of id values across all contact_center_insights_analysis_rules, keyed the same as var.contact_center_insights_analysis_rules except keys with no id are omitted"
  value       = { for k, v in google_contact_center_insights_analysis_rule.contact_center_insights_analysis_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "contact_center_insights_analysis_rules_active" {
  description = "Map of active values across all contact_center_insights_analysis_rules, keyed the same as var.contact_center_insights_analysis_rules except keys with no active are omitted"
  value       = { for k, v in google_contact_center_insights_analysis_rule.contact_center_insights_analysis_rules : k => v.active if v.active != null }
}
output "contact_center_insights_analysis_rules_analysis_percentage" {
  description = "Map of analysis_percentage values across all contact_center_insights_analysis_rules, keyed the same as var.contact_center_insights_analysis_rules except keys with no analysis_percentage are omitted"
  value       = { for k, v in google_contact_center_insights_analysis_rule.contact_center_insights_analysis_rules : k => v.analysis_percentage if v.analysis_percentage != null }
}
output "contact_center_insights_analysis_rules_annotator_selector" {
  description = "Map of annotator_selector values across all contact_center_insights_analysis_rules, keyed the same as var.contact_center_insights_analysis_rules except keys with no annotator_selector are omitted"
  value       = { for k, v in google_contact_center_insights_analysis_rule.contact_center_insights_analysis_rules : k => one(v.annotator_selector) if v.annotator_selector != null && length(v.annotator_selector) > 0 }
}
output "contact_center_insights_analysis_rules_conversation_filter" {
  description = "Map of conversation_filter values across all contact_center_insights_analysis_rules, keyed the same as var.contact_center_insights_analysis_rules except keys with no conversation_filter are omitted"
  value       = { for k, v in google_contact_center_insights_analysis_rule.contact_center_insights_analysis_rules : k => v.conversation_filter if v.conversation_filter != null && length(v.conversation_filter) > 0 }
}
output "contact_center_insights_analysis_rules_create_time" {
  description = "Map of create_time values across all contact_center_insights_analysis_rules, keyed the same as var.contact_center_insights_analysis_rules except keys with no create_time are omitted"
  value       = { for k, v in google_contact_center_insights_analysis_rule.contact_center_insights_analysis_rules : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "contact_center_insights_analysis_rules_deletion_policy" {
  description = "Map of deletion_policy values across all contact_center_insights_analysis_rules, keyed the same as var.contact_center_insights_analysis_rules except keys with no deletion_policy are omitted"
  value       = { for k, v in google_contact_center_insights_analysis_rule.contact_center_insights_analysis_rules : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "contact_center_insights_analysis_rules_display_name" {
  description = "Map of display_name values across all contact_center_insights_analysis_rules, keyed the same as var.contact_center_insights_analysis_rules except keys with no display_name are omitted"
  value       = { for k, v in google_contact_center_insights_analysis_rule.contact_center_insights_analysis_rules : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "contact_center_insights_analysis_rules_location" {
  description = "Map of location values across all contact_center_insights_analysis_rules, keyed the same as var.contact_center_insights_analysis_rules except keys with no location are omitted"
  value       = { for k, v in google_contact_center_insights_analysis_rule.contact_center_insights_analysis_rules : k => v.location if v.location != null && length(v.location) > 0 }
}
output "contact_center_insights_analysis_rules_name" {
  description = "Map of name values across all contact_center_insights_analysis_rules, keyed the same as var.contact_center_insights_analysis_rules except keys with no name are omitted"
  value       = { for k, v in google_contact_center_insights_analysis_rule.contact_center_insights_analysis_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "contact_center_insights_analysis_rules_project" {
  description = "Map of project values across all contact_center_insights_analysis_rules, keyed the same as var.contact_center_insights_analysis_rules except keys with no project are omitted"
  value       = { for k, v in google_contact_center_insights_analysis_rule.contact_center_insights_analysis_rules : k => v.project if v.project != null && length(v.project) > 0 }
}
output "contact_center_insights_analysis_rules_update_time" {
  description = "Map of update_time values across all contact_center_insights_analysis_rules, keyed the same as var.contact_center_insights_analysis_rules except keys with no update_time are omitted"
  value       = { for k, v in google_contact_center_insights_analysis_rule.contact_center_insights_analysis_rules : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

