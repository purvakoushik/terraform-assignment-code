variable "name" {
  type        = string
  description = "To declare filenames"
  #   default     = "important"
}

variable "name1" {
  type        = number
  description = "To declare numbers as names"
  #   default     = 1904585
}

variable "name2" {
  type        = list(any)
  description = "To declare names from list"
  #   default     = ["important.txt", "spam.html", 100.txt]
}

variable "name3" {
  type = object({
    name     = string
    content  = string
    password = number
  })
  description = "To declare names with the help of object"
  
  # default = {
  #   "name" : "important.txt"
  #   "content" : "Check the demo file"
  #   "password" : 1904585
  # }
}

variable "name4" {
  type        = map(any)
  description = "To declare names from map"
  # default = {
  #   name    = "map-important.html"
  #   content = "Check the html file"
  # }
}
