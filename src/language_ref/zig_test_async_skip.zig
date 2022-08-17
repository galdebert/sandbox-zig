const std = @import("std");

// The default test runner skips tests containing a suspend point while the test is running using
// the default, blocking IO mode. (The evented IO mode is enabled using the --test-evented-io command line parameter.)

test "async skip test" {
    var frame = async func();
    const result = await frame;
    try std.testing.expect(result == 1);
}

fn func() i32 {
    suspend {
        resume @frame();
    }
    return 1;
}
