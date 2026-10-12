output "compute_pools_lookup_id" {
  description = "Map of id values across all compute_pools_lookup, keyed the same as var.compute_pools_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_compute_pools.compute_pools_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_pools_lookup_compute_pools" {
  description = "Map of compute_pools values across all compute_pools_lookup, keyed the same as var.compute_pools_lookup except keys with no compute_pools are omitted"
  value       = { for k, v in data.snowflake_compute_pools.compute_pools_lookup : k => v.compute_pools if v.compute_pools != null && length(v.compute_pools) > 0 }
}
output "compute_pools_lookup_like" {
  description = "Map of like values across all compute_pools_lookup, keyed the same as var.compute_pools_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_compute_pools.compute_pools_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "compute_pools_lookup_limit" {
  description = "Map of limit values across all compute_pools_lookup, keyed the same as var.compute_pools_lookup except keys with no limit are omitted"
  value       = { for k, v in data.snowflake_compute_pools.compute_pools_lookup : k => one(v.limit) if v.limit != null && length(v.limit) > 0 }
}
output "compute_pools_lookup_starts_with" {
  description = "Map of starts_with values across all compute_pools_lookup, keyed the same as var.compute_pools_lookup except keys with no starts_with are omitted"
  value       = { for k, v in data.snowflake_compute_pools.compute_pools_lookup : k => v.starts_with if v.starts_with != null && length(v.starts_with) > 0 }
}
output "compute_pools_lookup_with_describe" {
  description = "Map of with_describe values across all compute_pools_lookup, keyed the same as var.compute_pools_lookup except keys with no with_describe are omitted"
  value       = { for k, v in data.snowflake_compute_pools.compute_pools_lookup : k => v.with_describe if v.with_describe != null }
}

