variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
}

variable "names" {
  description = "Names of the buckets to create."
  type        = list(string)
  default     = ["one", "two"]
}

variable "bucket_policy_only" {
  description = "Disable ad-hoc ACLs on specified buckets. Defaults to true. Map of lowercase unprefixed name => boolean"
  type        = map(string)
  default     = {}
}

variable "folders" {
  description = "Top level bucket folders. Map of lowercase unprefixed name => list of folders to create."
  type        = map
  default     = {}
}
