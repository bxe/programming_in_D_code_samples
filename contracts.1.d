module contracts_1;

import std.stdio;
import std.string;

string timeToString(in int hour, in int minute)
in {
    assert((hour >= 0) && (hour <= 23));
    assert((minute >= 0) && (minute <= 59));

} body {
    return format("%02s:%02s", hour, minute);
}

void main() {
    writeln(timeToString(12, 34));
}
