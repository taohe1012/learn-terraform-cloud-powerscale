provider "powerscale" {
  username = var.username
  password = var.password
  endpoint = var.endpoint
  insecure = var.insecure
}

provider "powermax" {
  username      = var.powermax_username
  password      = var.powermax_password
  endpoint      = var.powermax_endpoint
  serial_number = var.powermax_serial_number
  pmax_version  = var.pmax_version
  insecure = var.powermax_insecure
}

resource "powerscale_user" "testUser" {
  # Required name for creating
  name = "testUserCloud"

  # Optional query_force. If true, skip validation checks when creating user. The force option is required for user ID changes.
  # query_force = false

  # Optional query_zone, will return user according to zone. Specifies the zone that the user will belong to when creating. Once user is created, its zone cannot be changed.
  # query_zone = "testZone"

  # Optional query_provider, will return user according to provider. Specifies the provider that the user will belong to when creating. Once user is created, its provider cannot be changed.
  # query_provider = "testProvider"

  # Optional parameters when creating
  # sid = "SID:XXXX"

  # Optional parameters when creating and updating. 
  # uid      = 11000
  # password = "testPassword"
  roles    = ["SystemAdmin"]
  enabled = true
  # unlock = false
  # email = "testTerraform@dell.com"
  # home_directory = "/ifs/home/testUserResourceSample"
  # password_expires = true
  # primary_group = "testPrimaryGroup"
  # prompt_password_change = false
  # shell = "/bin/zsh"
  # expiry = 123456
  # gecos = "testFullName"
}

resource "powerscale_user_group" "testUserGroup" {
  # Required name for creating
  name = "testUserGroupCloud"
}

resource "powermax_volume" "testVolume" {

  # Attributes which are able to be modified after create (vol_name, mobility_id_enabled, size, cap_unit)

  # Required name of the volume to be created
  vol_name = "terraform_cloud_volume"

  # Required size of the volume
  size = 2.45

  # Required name of the storage group which the volume will be created with
  sg_name = "tfacc_cloud_volume"

  # Optional Default Unit is GB
  # Possible units are MB, GB, TB, and CYL
  cap_unit = "GB"

  # Optional enable the mobility id 
  mobility_id_enabled = false

}