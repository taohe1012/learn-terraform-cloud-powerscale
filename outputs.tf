output "users" {
  value = powerscale_user.testUser.name
}

output "userGroups" {
  value = powerscale_user_group.testUserGroup.name
}

output "powermaxVolume" {
  value = powermax_volume.testVolume.vol_name
}