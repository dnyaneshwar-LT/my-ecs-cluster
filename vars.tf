variable "region" {
  description = "AWS region"
  default = "ap-south-1"
}

variable "availability_zone" {
  description = "availability zone used for the demo, based on region"
  default = {
    ap-south-1 = "ap-south-1"
  }
}
