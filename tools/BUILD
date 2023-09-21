java_plugin(
    name = "mapper-processor-pluggin",
    javacopts = ["-proc:only"],
    processor_class = "com.datastax.oss.driver.internal.mapper.processor.MapperProcessor",
    visibility = ["//visibility:public"],
    deps = [
        "//3rdparty/jvm/com/datastax/oss:java_driver_mapper_processor",
    ],
)
