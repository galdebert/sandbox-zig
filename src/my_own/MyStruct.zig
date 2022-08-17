const std = @import("std");

// String literals are const pointers to null-terminated arrays of u8
// string literals are *const [6:0]u8
// and we can coerce *const [6:0]u8 to []const u8

const A = struct {
    str: []const u8,
    x: f32,

    pub fn set(self: *A, str: []const u8, x: f32) void {
        self.*.str = str;
        self.*.x = x;
    }

    pub fn get(self: A) struct {
        str: []u8,
        x: f32,
    } {
        return .{ self.str, self.x };
    }
};

test "A" {
    // we use stdout instead of str.log.info() because log is swallowed in tests
    const stdout = std.io.getStdOut().writer();

    try stdout.print("\n", .{});

    const s: *const [6:0]u8 = "qsdqsd";
    try stdout.print("s = {s}\n", .{s});

    const a = A{ .str = "my_str", .x = 2 };
    try stdout.print("a = {}\n", .{a});

    try stdout.print("\n", .{});
}
