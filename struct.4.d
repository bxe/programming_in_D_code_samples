module struct_4;

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
    immutable periodEnd = addDuration(TimeOfDay(8, 30),
                                      TimeOfDay(1, 15));

    writefln("Period end: %s:%s",
              periodEnd.hour, periodEnd.minute);
}
