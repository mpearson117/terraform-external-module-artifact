variable "filename" {
  type        = string
  description = "Artifact filename"
  default     = "lambda.zip"
}

variable "module_name" {
  type        = string
  description = "Name of the terraform module"
}

variable "module_path" {
  type        = string
  description = "Local path to the terraform module; e.g. `$${path.module}`"
}

variable "git_ref" {
  type        = string
  description = "Git hash corresponding to the remote artifact. Leave blank and it will be computed from the `module_path` checkout"
  default     = ""
}

variable "url" {
  type        = string
  description = "URL template for the remote artifact"
  default     = "https://artifacts.cloudposse.com/$$${module_name}/$$${git_ref}/$$${filename}"
}

variable "curl_arguments" {
  type        = string
  description = "Arguments that should get passed to `curl`"
  default     = "-fsSL"
}
