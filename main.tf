resource "local_file" "myfile" {
  content  = "This file is for demo check"
  filename = "demo.txt"
}

resource "random_id" "randomnames" {
  byte_length = 8
}

locals {
  name = "demo1.html"
  con  = "This content is for demo files"
}

resource "local_file" "myfile1" {
  filename = local.name
  content  = local.con
}

resource "local_file" "myfile2" {
  filename = random_id.randomnames.hex
  content  = random_id.randomnames.dec
}

resource "local_file" "myfile3" {
  filename = "D:/directory1/${var.name}"
  content  = local.con
}

resource "local_file" "myfile4" {
  filename = "D:/cloudeq/directory2/${var.name1}"
  content  = local.con
}

resource "local_file" "myfile5" {
  filename = "C:/directory3/${var.name2[1]}"
  content  = local.con
}

resource "local_file" "myfile6" {
  filename = "C:/Riot Games/directory4/${var.name3["name"]}"
  content  = var.name3["content"]
}

resource "local_file" "myfile7" {
  filename = var.name4["name"]
  content  = var.name4["content"]
}


