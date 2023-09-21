load("@io_bazel_rules_scala//scala:scala_import.bzl", "scala_import")
load("@io_bazel_rules_scala//scala:scala.bzl", "scala_library", "scala_binary", "scala_test")
java_library(
    name = "asm",
    exports = [
        "//external:jar/org/ow2/asm/asm"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "asm_analysis",
    exports = [
        "//external:jar/org/ow2/asm/asm_analysis",
        ":asm_tree"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "asm_commons",
    exports = [
        "//external:jar/org/ow2/asm/asm_commons",
        ":asm",
        ":asm_analysis",
        ":asm_tree"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "asm_tree",
    exports = [
        "//external:jar/org/ow2/asm/asm_tree",
        ":asm"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "asm_util",
    exports = [
        "//external:jar/org/ow2/asm/asm_util",
        ":asm",
        ":asm_analysis",
        ":asm_tree"
    ],
    visibility = [
        "//visibility:public"
    ]
)


