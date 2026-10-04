variable "GITHUB_REPOSITORY_OWNER" {
  default = "socheatsok78"
}

group "default" {
    targets = [
        "reverse-proxy",
        "netbirdio-provisioner",
    ]
}

target "reverse-proxy" {
    context = "reverse-proxy"
    tags = [
        "ghcr.io/${GITHUB_REPOSITORY_OWNER}/netbirdio-reverse-proxy:latest"
    ]
}

target "netbirdio-provisioner" {
    context = "netbirdio-provisioner"
    tags = [
        "ghcr.io/${GITHUB_REPOSITORY_OWNER}/netbirdio-provisioner:latest"
    ]
}
