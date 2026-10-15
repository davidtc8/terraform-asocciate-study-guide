variable "buckets_east" {
  type = map(string)
  default = {
    "backup-bucket"    = "david-data-backup-bucket-east"
    "terraform-bucket" = "david-terraform-bucket-east"
  }
}

variable "buckets_west" {
  type = map(string)
  default = {
    "backup-bucket"    = "david-data-backup-bucket-west"
    "terraform-bucket" = "david-terraform-bucket-west"
  }
}