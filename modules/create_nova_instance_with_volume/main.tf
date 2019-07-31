
# ------------------------------------------------------------------------------
# DEPLOY A SINGLE NOVA INSTANCE
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# Create nova instance
# ------------------------------------------------------------------------------

resource "openstack_compute_instance_v2" "nova_instance" {
  name            = "${var.instance_name}"
  flavor_id       = "${var.flavor_id}"
  user_data       = "#cloud-config\npassword: atomic\nchpasswd: {expire: False}\nssh_pwauth: True"

  block_device {
	  uuid                  = "${var.image_id}"
	  source_type           = "image"
	  volume_size           = 300
	  boot_index            = 0
	  destination_type      = "volume"
	  delete_on_termination = true
  }

  block_device {
    source_type           = "blank"
    destination_type      = "volume"
    volume_size           = ${var.extra_volume_size}
    boot_index            = 1
    delete_on_termination = true
  }
  network {
    name = "${var.network_name1}"
  }

  network {
    name = "${var.network_name1}"
  }
}