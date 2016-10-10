module operator_overloading_7;

import std.stdio;
import std.string;

struct Duration {
    int minute;
}

struct TimeOfDay {
    int hour;
    int minute;

    ref TimeOfDay opOpAssign(string op)(in Duration duration)
            if (op == "+") {
        minute += duration.minute;

        hour += minute / 60;
        minute %= 60;
        hour %= 24;

        return this;
    }

    int opCmp(in TimeOfDay rhs) const {
        return (hour == rhs.hour
                ? minute - rhs.minute
                : hour - rhs.hour);
    }

    string toString() const {
        return format("%02s:%02s", hour, minute);
    }
}

struct TimeSpan {
    TimeOfDay begin;
    TimeOfDay end;    // end is outside of the span

    bool opBinaryRight(string op)(TimeOfDay time) const
            if (op == "in") {
        return (time >= begin) && (time < end);
    }
}

void main() {
    auto lunchBreak = TimeSpan(TimeOfDay(12, 00),
                               TimeOfDay(13, 00));

    for (auto time = TimeOfDay(11, 30);
         time < TimeOfDay(13, 30);
         time += Duration(15)) {

        if (time in lunchBreak) {
            writeln(time, " is during the lunch break");

        } else {
            writeln(time, " is outside of the lunch break");
        }
    }
}
