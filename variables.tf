variable "location" {
  description = <<EOT
The Azure Region where the Resource Group should exist.
Changing this forces a new Resource Group to be created.
EOT
  type        = string
}

variable "name" {
  description = <<EOT
The Name which should be used for this Resource Group.
Changing this forces a new Resource Group to be created.
EOT
  type        = string
}

variable "tags" {
  description = "A mapping of tags which should be assigned to the Resource Group."
  type        = map(string)
  default     = {}
}

variable "lock_level" {
  description = <<EOT
Specifies the Level to be used for this RG Lock.
Possible values are Empty (no lock), CanNotDelete and ReadOnly.
EOT
  type        = string
  default     = ""
}
