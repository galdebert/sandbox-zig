const std = @import("std");

pub fn build(builder: *std.build.Builder) void {
    // Standard target options allows the person running `zig build` to choose
    // what target to build for. Here we do not override the defaults, which
    // means any target is allowed, and the default is native. Other options
    // for restricting supported target set are available.
    const target = builder.standardTargetOptions(.{});

    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = builder.standardReleaseOptions();

    //--------------------------------------
    // `zig build` and `zig build run`
    {
        const exe = builder.addExecutable("hello-world", "src/main.zig");
        exe.setTarget(target);
        exe.setBuildMode(mode);
        exe.install();

        const run_cmd = exe.run();
        run_cmd.step.dependOn(builder.getInstallStep());
        if (builder.args) |args| {
            run_cmd.addArgs(args);
        }

        const run_step = builder.step("run", "Run the app");
        run_step.dependOn(&run_cmd.step);
    }

    //--------------------------------------
    // zig build test
    {
        const test_exe = builder.addTest("src/main.zig");
        test_exe.setTarget(target);
        test_exe.setBuildMode(mode);

        const test_step = builder.step("test", "Run unit tests");
        test_step.dependOn(&test_exe.step);
    }

    //--------------------------------------
    // zig build test_all
    {
        const test_all_exe = builder.addTest("src/test_all.zig");
        test_all_exe.setTarget(target);
        test_all_exe.setBuildMode(mode);

        const test_all_step = builder.step("test_all", "Run ALL unit tests");
        test_all_step.dependOn(&test_all_exe.step);
    }
}
