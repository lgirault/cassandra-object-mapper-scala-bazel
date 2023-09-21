load("@io_bazel_rules_scala//scala:scala_import.bzl", "scala_import")
load("@io_bazel_rules_scala//scala:scala.bzl", "scala_library", "scala_binary", "scala_test")
java_library(
    name = "bcrypt",
    exports = [
        "//external:jar/at/favre/lib/bcrypt",
        ":bytes"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "bytes",
    exports = [
        "//external:jar/at/favre/lib/bytes"
    ],
    visibility = [
        "//visibility:public"
    ]
)


