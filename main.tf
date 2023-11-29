provider "powerscale" {
  username = "root"
  password = "Password123!"
  endpoint = "https://10.225.108.6:8080"
  insecure = true
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
  # enabled = false
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