const std = @import("std");
const _ = @import("./my_own/MyStruct.zig");


pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("{s}, {s}!\n", .{ "Hello", "world" });

    std.log.info("All your codebase are belong to us.", .{});

    std.debug.print("All your codebase are belong to us.", .{});
}

test "basic test" {
    std.testing.refAllDecls(@This());
    
    try std.testing.expectEqual(10, 3 + 7);
}
