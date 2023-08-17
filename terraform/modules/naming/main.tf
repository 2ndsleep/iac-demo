locals {
  name          = "${var.org}-${var.workload}-${var.env}-${var.instance}"
  organizations = jsondecode(file("${path.module}/lookups/organizations.json"))
  environments  = jsondecode(file("${path.module}/lookups/environments.json"))
  workloads     = jsondecode(file("${path.module}/lookups/workloads.json"))
  environment   = lookup(local.environments, var.env)
}

output "name" {
  value = var.resource_type == "storageAccount" ? replace(local.name, "-", "") : local.name
}

output "tags" {
  value = {
    organization      = var.organization_long_name == null ? lookup(local.organizations, var.org, var.org) : var.organization_long_name
    environment       = local.environment
    workload          = var.workload_long_name == null ? lookup(local.workloads, var.workload, var.workload) : var.workload_long_name
    enforceDeleteLock = var.env != "dev"
    enforceReadLock   = var.env != "prd"
  }
}