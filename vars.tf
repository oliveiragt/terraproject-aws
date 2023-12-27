variable "amis" {
    type = map(string)
    default = {
        ubuntu_us_east_1 = "ami-06aa3f7caf3a30282"
        ubuntu_us_east_2 = "ami-07b36ea9852e986ad"
    }
}

variable "cdir_allowed_ips" {
    type = list(string)
    default = ["INSERT LIST OF IPS"]
}

