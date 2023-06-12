const std = @import("std");
const c = @cImport(@cInclude("add_in_c.h"));

pub fn main() !void {
    var i: i64 = c.add_in_c(3, 4);
    std.debug.print("i == {d}\n", .{i});
}

test "simple test" {
    try std.testing.expectEqual(@as(i64, 7), c.add_in_c(3, 4));
}
