output "users" {
  value = powerscale_user.testUser.name
}

output "userGroups" {
  value = powerscale_user_group.testUserGroup.name
}
