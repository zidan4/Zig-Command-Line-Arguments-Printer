const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    const args = std.process.args();
    var it = args.iterator();

    while (it.next()) |arg| {
        try stdout.print("Arg: {s}\n", .{arg});
    }
}
