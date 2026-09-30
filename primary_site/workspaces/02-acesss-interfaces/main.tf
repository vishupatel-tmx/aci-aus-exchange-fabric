module "nac-aci" {
  source  = "netascode/nac-aci/aci"
  version = "2.1.0"

 # Point to the EXACT SAME unified data directory
  yaml_directories = ["../../data"]

# Enable physical layer constructs
  manage_access_policies    = true
  manage_interface_policies = true
  
  # Disable core fabric and logical overlays
  manage_fabric_policies = false
  manage_pod_policies    = false
  manage_node_policies   = false
  manage_tenants         = false
  
}