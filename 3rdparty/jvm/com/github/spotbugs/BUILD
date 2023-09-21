load("@io_bazel_rules_scala//scala:scala_import.bzl", "scala_import")
load("@io_bazel_rules_scala//scala:scala.bzl", "scala_library", "scala_binary", "scala_test")
java_library(
    name = "spotbugs_annotations",
    exports = [
        "//3rdparty/jvm/com/google/code/findbugs:jsr305",
        "//external:jar/com/github/spotbugs/spotbugs_annotations"
    ],
    visibility = [
        "//visibility:public"
    ]
)


