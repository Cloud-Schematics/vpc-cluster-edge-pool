##############################################################################
# Account variables
##############################################################################

variable ibmcloud_api_key {
    description = "The IBM Cloud platform API key needed to deploy IAM enabled resources"
    type        = string
}

variable ibm_region {
    description = "IBM Cloud region where all resources will be deployed"
    type        = string
}

variable resource_group {
    description = "Name for IBM Cloud Resource Group where resources will be deployed"
    type        = string
}


##############################################################################
# VPC Variables
##############################################################################

variable vpc_name {
    description = "Name of the VPC where the cluster will be provisioned"
    type        = string
}

variable subnet_names {
    description = "A list of subnet names for the edge worker pool. These subnets must exist within your VPC"
    type        = list(string)
}

##############################################################################


##############################################################################
# Cluster Variables
##############################################################################

variable cluster_name {
    description = "Name of the cluster where resources will be deployed"
    type        = string
}

##############################################################################


##############################################################################
# Edge Pool Variables
##############################################################################

variable edge_pool_name {
    description = "Name for the edge pool to be created"
    type        = string
    default     = "edge-pool"
}

variable machine_type {
    description = "The flavor of VPC worker nodes to use for your edge pool"
    type        = string
    default     = "bx2.4x16"
}

variable workers_per_zone {
    description = "Number of workers to provision in each subnet. Openshift clusters require at least 2 workers."
    type        = number
    default     = 2
}

variable entitlement {
    description = "Change this field to an empty string if not using an OpenShift Cluster. If you purchased an IBM Cloud Cloud Pak that includes an entitlement to run worker nodes that are installed with OpenShift Container Platform, enter entitlement to create your cluster with that entitlement so that you are not charged twice for the OpenShift license. Note that this option can be set only when you create the cluster. After the cluster is created, the cost for the OpenShift license occurred and you cannot disable this charge."
    type        = string
    default     = "cloud_pak"
}

##############################################################################
