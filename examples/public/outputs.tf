output "load_balncer_id" {
  value = module.public_lb.lb_ids
}

output "backend_pool_id" {
  value = module.public_lb.backend_pool_ids
}

output "nat_rule_ids" {
  value = module.public_lb.nat_rule_ids
}

output "lb_rule_ids" {
  value = module.public_lb.lb_rule_ids
}

output "backend_pool_ids_map" {
  value = module.public_lb.backend_pool_ids_map
}