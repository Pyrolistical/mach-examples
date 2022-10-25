const std = @import("std");
const mach = @import("mach");
const gpu = @import("gpu");
const glfw = @import("glfw");
const Joystick = glfw.Joystick;

pub const App = @This();

_: i32,

pub fn init(_: *App, _: *mach.Core) !void {}

pub fn deinit(_: *App, _: *mach.Core) void {}

pub fn update(_: *App, _: *mach.Core) !void {
    const joystick = Joystick{ .jid = .one };
    if (try joystick.present()) {
        std.debug.print("{any}\n", .{try joystick.getButtons()});
    }
}
