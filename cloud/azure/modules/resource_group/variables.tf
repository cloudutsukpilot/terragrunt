variable "resource_groups" {
  description = "Map of resource groups to create, with details like name, location, and tags."
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
}