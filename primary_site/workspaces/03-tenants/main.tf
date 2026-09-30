module "nac-aci" {
  source  = "netascode/nac-aci/aci"
  version = "2.1.0"

 # Point to the EXACT SAME unified data directory
  yaml_directories = ["../../data"]

  # Enable logical network overlays
  manage_tenants            = true
  
  # Disable all physical and fabric infrastructure
  manage_fabric_policies    = false
  manage_pod_policies       = false
  manage_node_policies      = false
  manage_access_policies    = false
  manage_interface_policies = false
  
}