variable "flagship_flags" {
  description = <<EOT
Map of flagship_flags, attributes below
Required:
    - account_id
    - app_id
    - default_variation
    - enabled
    - key
    - rules
    - variations
Optional:
    - description
    - flag_key
    - type
EOT

  type = map(object({
    account_id        = string
    app_id            = string
    default_variation = string
    enabled           = bool
    key               = string
    rules = list(object({
      conditions = list(object({
        attribute = optional(string)
        clauses = optional(list(object({
          attribute = optional(string)
          clauses = optional(list(object({
            attribute = optional(string)
            clauses = optional(list(object({
              attribute = optional(string)
              clauses = optional(list(object({
                attribute = optional(string)
                clauses = optional(list(object({
                  attribute        = optional(string)
                  clauses          = optional(list(string))
                  logical_operator = optional(string)
                  operator         = optional(string)
                  value            = optional(string)
                })))
                logical_operator = optional(string)
                operator         = optional(string)
                value            = optional(string)
              })))
              logical_operator = optional(string)
              operator         = optional(string)
              value            = optional(string)
            })))
            logical_operator = optional(string)
            operator         = optional(string)
            value            = optional(string)
          })))
          logical_operator = optional(string)
          operator         = optional(string)
          value            = optional(string)
        })))
        logical_operator = optional(string)
        operator         = optional(string)
        value            = optional(string)
      }))
      priority = number
      rollout = optional(object({
        attribute  = optional(string)
        percentage = number
      }))
      serve_variation = string
    }))
    variations  = map(string)
    description = optional(string)
    flag_key    = optional(string)
    type        = optional(string)
  }))
}

