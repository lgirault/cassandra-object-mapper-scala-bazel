load(
    "@io_bazel_rules_scala//scala:scala.bzl",
    "setup_scala_toolchain",
)

setup_scala_toolchain(
    name = "scala_toolchain",
    scala_compile_classpath = [
        "//3rdparty/jvm/org/scala_lang:scala_compiler",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/scala_lang:scala_reflect",
    ],
    scala_library_classpath = [
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/scala_lang:scala_reflect",
    ],
    scala_macro_classpath = [
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/scala_lang:scala_reflect",
    ],
    scalacopts = [
        "-Yrangepos",
        "-deprecation",
        #"-Xlint", #todo use this one to enable all lint instead of some rules
        "-Xlint:adapted-args",
        "-Xlint:constant",
        "-Xlint:delayedinit-select",
        "-Xlint:doc-detached",
        "-Xlint:inaccessible",
        "-Xlint:infer-any",
        #"-Xlint:missing-interpolator",
        "-Xlint:option-implicit",
        "-Xlint:package-object-classes",
        "-Xlint:poly-implicit-overload",
        "-Xlint:private-shadow",
        "-Xlint:stars-align",
        "-Xlint:type-parameter-shadow",
        "-feature",
        "-language:existentials",
        "-language:higherKinds",
    ],
    visibility = ["//visibility:public"],
)
