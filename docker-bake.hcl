variable "GITHUB_REPOSITORY_OWNER" {
  default = "socheatsok78"
}

group "default" {
    targets = [
        "reverse-proxy",
        "netbirdio-provisioner",
    ]
}

variable "NETBIRD_RELEASES" {
    default = [
        "latest",
        "0.81.3",
    ]
}

target "reverse-proxy" {
    matrix = {
        version = NETBIRD_RELEASES
    }
    name = "reverse-proxy-${sanitize(version)}"
    context = "reverse-proxy"
    args = {
        NETBIRD_VERSION = version
    }
    platforms = [
        "linux/amd64",
        "linux/arm64",
    ]
    tags = [
        "ghcr.io/${GITHUB_REPOSITORY_OWNER}/netbirdio-reverse-proxy:${version}"
    ]
}

target "netbirdio-provisioner" {
    matrix = {
        version = NETBIRD_RELEASES
    }
    name = "netbirdio-provisioner-${sanitize(version)}"
    context = "netbirdio-provisioner"
    args = {
        NETBIRD_VERSION = version
    }
    platforms = [
        "linux/amd64",
        "linux/arm64",
    ]
    tags = [
        "ghcr.io/${GITHUB_REPOSITORY_OWNER}/netbirdio-provisioner:${version}"
    ]
}
