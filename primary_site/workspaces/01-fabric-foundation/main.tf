module "nac-aci" {
  source  = "netascode/nac-aci/aci"
  version = "2.1.0"

 # Point to the EXACT SAME unified data directory
  yaml_directories = ["../../data"]

# Enable core fabric infrastructure
  manage_fabric_policies = true
  manage_pod_policies    = true
  manage_node_policies   = true
  
  # Disable everything else (handled by other workspaces)
  manage_access_policies    = false
  manage_interface_policies = false
  manage_tenants            = false
}