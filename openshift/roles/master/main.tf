
# ------------------------------------------------------------------------------
# DEPLOY CONTROLLER ROLE:  NOVA  INSTANCE, SECURITY GROUP AND KEYPAIR
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# Provider setup
# ------------------------------------------------------------------------------
provider "openstack" {
  user_name   = var.user_name
  tenant_name = var.tenant_name
  password    = var.password
  auth_url    = var.auth_url
  region      = var.region
}
# ------------------------------------------------------------------------------
# Create Openstack  instance
# ------------------------------------------------------------------------------

module "create_nova_instance_with_volume1" {
  source = "../../../modules/create_nova_instance"
  instance_name = "ocp-master01"
  image_id = "9523d0ea-9ec4-447e-a71e-8be2c74a1228"
  flavor_id = "5bfcf6ad-0da9-4549-88be-2e377dbb67c0"
  network_name1 = "39052a40-7a9a-40b8-b420-5fa8783b85c6"
  network_name2 = "918fdcf8-ef1d-4c19-826d-c18229ce3cea"
  extra_volume_size = 100
}

module "create_nova_instance_with_volume2" {
  source = "../../../modules/create_nova_instance"
  instance_name = "ocp-master02"
  image_id = "9523d0ea-9ec4-447e-a71e-8be2c74a1228"
  flavor_id = "5bfcf6ad-0da9-4549-88be-2e377dbb67c0"
  network_name1 = "39052a40-7a9a-40b8-b420-5fa8783b85c6"
  network_name2 = "918fdcf8-ef1d-4c19-826d-c18229ce3cea"
  extra_volume_size = 100
}

module "create_nova_instance_with_volume3" {
  source = "../../../modules/create_nova_instance"
  instance_name = "ocp-master03"
  image_id = "9523d0ea-9ec4-447e-a71e-8be2c74a1228"
  flavor_id = "5bfcf6ad-0da9-4549-88be-2e377dbb67c0"
  network_name1 = "39052a40-7a9a-40b8-b420-5fa8783b85c6"
  network_name2 = "918fdcf8-ef1d-4c19-826d-c18229ce3cea"
  extra_volume_size = 100
}

#openshift-app 3bfbdb81-7f7d-47ce-a907-5688a6729efc
#openshift-cicd  86455fff-d6d2-4759-bf3a-2ca374f7f7f9  
#openshift-infra 7e61b521-13cd-41cb-8416-fa5267ea78d2
#openshift-logging 23301459-c89d-4b7e-a8d3-3947f2734c53
#openshift-master  5bfcf6ad-0da9-4549-88be-2e377dbb67c0 
#openshift-metrics 1bac79d3-6ac1-4655-9b6b-ec6975bb0268