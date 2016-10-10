module slices_1;

import std.stdio;

void main() {
    int[12] monthDays =
        [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];

    int[] leapYear = monthDays.dup;

    ++leapYear[1];   // increments the days in February

    writeln("Non-leap year: ", monthDays);
    writeln("Leap year    : ", leapYear);
}
