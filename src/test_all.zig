const std = @import("std");
//const _ = @import("./arrays"); // solution 1

test "test all" {
    // std.testing.refAllDecls(@This()) works along with const _ = @import("./arrays");
    //std.testing.refAllDecls(@This()); // solution 1

    // Note

    //_ = @import("./code_examples/arrays.zig");
    //_ = @import("./code_examples/default_field_valuesn.zig");
    //_ = @import("./code_examples/infer_list_literal.zig");
    //_ = @import("./code_examples/structs.zig");
    //_ = @import("./code_examples/zigg_zagg.zig");
    //_ = @import("./code_examples/memory_leak_detection.zig");

    _ = @import("./my_own/MyStruct.zig");
}
