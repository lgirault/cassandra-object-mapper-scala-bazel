java_plugin(
    name = "mapper-processor-plugin",
    javacopts = ["-proc:only"],
    processor_class = "com.datastax.oss.driver.internal.mapper.processor.MapperProcessor",
    visibility = ["//visibility:public"],
    deps = [
        "//3rdparty/jvm/com/datastax/oss:java_driver_mapper_processor",
    ],
)

java_library(
    name = "mapper-processor",
    exported_plugins = [":mapper-processor-plugin"],
    visibility = ["//visibility:public"],
)
