const std = @import("std");
const expectEqual = std.testing.expectEqual;

test "switch continue" {
    var sw: i32 = 5;
    while (true) {
        switch (sw) {
            5 => {
                sw = 4;
                continue;
            },
            2...4 => |v| {
                if (v > 3) {
                    sw = 2;
                    continue;
                } else if (v == 3) {
                    break;
                }

                sw = 1;
                continue;
            },
            1 => return,
            else => unreachable,
        }
    }
}

// test
