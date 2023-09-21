load(
    "@io_bazel_rules_scala//scala/private:rule_impls.bzl",
    "specified_java_compile_toolchain",
)

def _mapper_processor_impl(ctx):
    source_jars = ctx.attr.input[JavaInfo].compile_jars.to_list()
    plugin = ctx.attr._plugin[JavaPluginInfo]
    java_toolchain = specified_java_compile_toolchain(ctx)

    java_common.compile(
        ctx,
        source_jars = source_jars,
        output = ctx.outputs.out,
        javac_opts = [
            "-proc:only",
        ],
        java_toolchain = java_toolchain,
        plugins = [plugin],
    )

mapper_processor = rule(
    implementation = _mapper_processor_impl,
    attrs = {
        "input": attr.label(
            allow_single_file = True,
            mandatory = True,
            doc = "The files to transform",
        ),
        "deps": attr.label_list(
            allow_files = False,
            providers = [JavaInfo],
        ),
        "java_compile_toolchain": attr.label(
            default = Label("@bazel_tools//tools/jdk:current_java_toolchain"),
            providers = [java_common.JavaToolchainInfo],
        ),
        "_plugin": attr.label(
            default = Label("//tools:mapper-processor-pluggin"),
        ),
    },
    fragments = ["java"],
    doc = "Rename a jar to a srcjar",
    outputs = {"out": "%{name}.srcjar"},
)
