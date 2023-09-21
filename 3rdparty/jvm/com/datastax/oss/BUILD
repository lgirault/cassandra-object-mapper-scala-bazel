load("@io_bazel_rules_scala//scala:scala_import.bzl", "scala_import")
load("@io_bazel_rules_scala//scala:scala.bzl", "scala_library", "scala_binary", "scala_test")
java_library(
    name = "java_driver_core",
    exports = [
        "//3rdparty/jvm/com/fasterxml/jackson/core:jackson_core",
        "//3rdparty/jvm/com/fasterxml/jackson/core:jackson_databind",
        "//3rdparty/jvm/com/github/jnr:jnr_posix",
        "//3rdparty/jvm/com/github/spotbugs:spotbugs_annotations",
        "//3rdparty/jvm/com/github/stephenc/jcip:jcip_annotations",
        "//3rdparty/jvm/com/typesafe:config",
        "//3rdparty/jvm/io/dropwizard/metrics:metrics_core",
        "//3rdparty/jvm/io/netty:netty_handler",
        "//3rdparty/jvm/org/hdrhistogram:HdrHistogram",
        "//3rdparty/jvm/org/reactivestreams:reactive_streams",
        "//3rdparty/jvm/org/slf4j:slf4j_api",
        "//external:jar/com/datastax/oss/java_driver_core",
        ":java_driver_shaded_guava",
        ":native_protocol"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "java_driver_mapper_processor",
    exports = [
        "//3rdparty/jvm/com/github/spotbugs:spotbugs_annotations",
        "//3rdparty/jvm/com/github/stephenc/jcip:jcip_annotations",
        "//3rdparty/jvm/com/squareup:javapoet",
        "//external:jar/com/datastax/oss/java_driver_mapper_processor",
        ":java_driver_mapper_runtime",
        ":java_driver_shaded_guava"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "java_driver_mapper_runtime",
    exports = [
        "//3rdparty/jvm/com/github/spotbugs:spotbugs_annotations",
        "//3rdparty/jvm/com/github/stephenc/jcip:jcip_annotations",
        "//external:jar/com/datastax/oss/java_driver_mapper_runtime",
        ":java_driver_core",
        ":java_driver_query_builder"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "java_driver_query_builder",
    exports = [
        "//3rdparty/jvm/com/github/spotbugs:spotbugs_annotations",
        "//3rdparty/jvm/com/github/stephenc/jcip:jcip_annotations",
        "//external:jar/com/datastax/oss/java_driver_query_builder",
        ":java_driver_core",
        ":java_driver_shaded_guava"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "java_driver_shaded_guava",
    exports = [
        "//external:jar/com/datastax/oss/java_driver_shaded_guava"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "native_protocol",
    exports = [
        "//external:jar/com/datastax/oss/native_protocol"
    ],
    visibility = [
        "//visibility:public"
    ]
)


