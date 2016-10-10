module operator_overloading_5;

import std.stdio;
import std.conv;

struct Duration {
    int hour;
    int minute;

    double opCast(T : double)() const {
        return hour + (to!double(minute) / 60);
    }
}

void main() {
    auto duration = Duration(2, 30);
    double d = to!double(duration);
    // (could be 'cast(double)duration' as well)

    writeln(d);
}
