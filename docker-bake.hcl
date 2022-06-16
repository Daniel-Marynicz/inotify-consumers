
target "docker-metadata-action" {}


target "defaults" {
    context = "."
    output = ["type=docker"]
}

target "default" {
    inherits = ["defaults", "docker-metadata-action"]
}
