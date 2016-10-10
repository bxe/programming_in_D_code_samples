module member_functions_1;

import std.stdio;

struct TimeOfDay {
    int hour;
    int minute;

    string toString() {
        return "todo";
    }
}

void main() {
    auto morning = TimeOfDay(10, 0);
    auto evening = TimeOfDay(22, 0);

    writefln("%s-%s", morning, evening);
}
