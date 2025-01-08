
variable "vpc_config" {
  type = object({
    cidr_block = string
    name       = string
  })

  validation {
    condition     = can(cidrnetmask(var.vpc_config.cidr_block))
    error_message = "The cidr_block config option must conatin a valid CIDR block."
  }
}

variable "subnet_config" {
  type = map(object({
    cidr_block = string
    public     = optional(bool, false)
    az         = string
  }))

  validation {
    condition = alltrue([
      for config in values(var.subnet_config) :
      can(cidrnetmask(var.vpc_config.cidr_block))
    ])
    error_message = "The cidr_block config option must conatin a valid CIDR block."
  }
}
