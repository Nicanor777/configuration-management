variable "docker_images" {
  type        = list(string)
  description = "This are the images in my environment"
  default = [
    "0100ulquiorra/yolo-client:v1.0.0",
    "0100ulquiorra/yolo-backend:v1.0.0",
  ]
}

variable "instances" {
  type = list(string)
  default = [
    "ansible-server",
    "ansible-client-one",
    "ansible-client-two",
  ]
}

variable "token" {
  type    = string
  default = ""
}

variable "project_id" {
  type    = string
  default = ""
}

variable "organization_developers" {
  type    = list(string)
  default = [""]
}