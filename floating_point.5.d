module floating_point_5;

import std.stdio;

void main() {
    if (double.nan == double.nan) {
        writeln("equal");

    } else {
        writeln("not equal");
    }
}
