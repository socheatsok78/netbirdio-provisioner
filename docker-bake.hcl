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
    platforms = [
        "linux/amd64",
        "linux/arm64",
    ]
    tags = [
        "ghcr.io/${GITHUB_REPOSITORY_OWNER}/netbirdio-reverse-proxy:latest"
    ]
}

target "netbirdio-provisioner" {
    context = "netbirdio-provisioner"
    platforms = [
        "linux/amd64",
        "linux/arm64",
    ]
    tags = [
        "ghcr.io/${GITHUB_REPOSITORY_OWNER}/netbirdio-provisioner:latest"
    ]
}
