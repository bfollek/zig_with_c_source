# zig_with_c_source

A simple example of using a C source file in a Zig project.

This works with zig version 0.11.0-dev. The tricky bits are in the `build.zig` file. Look for

```zig
exe.addCSourceFile("src/add_in_c.c", &[_][]const u8{"-std=c99"});
exe.addIncludePath("src");
exe.linkSystemLibrary("c");
```

and

```zig
unit_tests.addCSourceFile("src/add_in_c.c", &[_][]const u8{"-std=c99"});
unit_tests.addIncludePath("src");
unit_tests.linkSystemLibrary("c");
```

