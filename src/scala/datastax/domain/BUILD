load("@object_mapper_scala_bazel//tools:datastax_mapper_processor.bzl", "mapper_processor")
load("@io_bazel_rules_scala//scala:scala_import.bzl", "scala_import")

scala_library(
    name = "domain",
    srcs = glob(["**/*.scala"]),
    visibility = ["//visibility:public"],
    deps = [
        "//3rdparty/jvm/at/favre/lib:bcrypt",
        "//3rdparty/jvm/com/datastax/oss:java_driver_mapper_runtime",
    ],
)

scala_import(
    name = "domain-classes",
    jars = [
        ":domain",
    ],
    visibility = ["//visibility:public"],
)

mapper_processor(
    name = "mapper-src",
    input = ":domain-classes",
    visibility = ["//visibility:public"],
    deps = [
        "//3rdparty/jvm/com/datastax/oss:java_driver_mapper_processor",
    ],
)

java_library(
    name = "mapper",
    srcs = [":mapper-src"],
    visibility = ["//visibility:public"],
    deps = [
        ":domain",
        "//3rdparty/jvm/com/datastax/oss:java_driver_mapper_runtime",
    ],
)
