##############################################################################
# Worker Pool
##############################################################################

resource ibm_container_vpc_worker_pool pool {
                                                                   
    vpc_id             = data.ibm_is_vpc.vpc.id                    # var.vpc_id
    resource_group_id  = data.ibm_resource_group.group.id          # var.resource_group_id
    cluster            = data.ibm_container_vpc_cluster.cluster.id # var.cluster_name_id
    worker_pool_name   = var.edge_pool_name
    flavor             = var.machine_type
    worker_count       = var.workers_per_zone
    entitlement        = var.entitlement == "" ? null : var.entitlement

    labels             = {
        dedicated = "edge"
    }

    dynamic zones {
        for_each = local.edge_subnet_data
        content {
            subnet_id = zones.value.id
            name      = zones.value.zone
        }
    }

}

##############################################################################