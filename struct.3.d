module struct_3;

import std.stdio;
struct TimeOfDay {
    int hour;
    int minute;
}
TimeOfDay addDuration(in TimeOfDay start,
                      in TimeOfDay duration) {
    TimeOfDay result;

    result.minute = start.minute + duration.minute;
    result.hour = start.hour + duration.hour;
    result.hour += result.minute / 60;

    result.minute %= 60;
    result.hour %= 24;

    return result;
}
void main() {
    immutable periodStart = TimeOfDay(8, 30);
    immutable periodDuration = TimeOfDay(1, 15);

    immutable periodEnd = addDuration(periodStart,
                                      periodDuration);

    writefln("Period end: %s:%s",
              periodEnd.hour, periodEnd.minute);
}
