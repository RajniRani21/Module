variable "region" {
  type=string
}

variable "profile" {
  type=string
}

variable "bucket_name" {
  type=string
}

variable "s3_buckets" {
  type=map(any)
}

variable "instance" {
  type=map(any)
}