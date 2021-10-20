variable "name" {
  description = "The bucket name; it should match the website domain exactly"
  type        = string
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
  default     = {}
}

variable "index_document" {
  description = "The index document path"
  type        = string
  default     = "index.html"
}

variable "error_document" {
  description = "The error document path"
  type        = string
  default     = "error.html"
}

variable "force_destroy" {
  description = "Delete all objects when destroying the bucket"
  type        = string
  default     = false
}
