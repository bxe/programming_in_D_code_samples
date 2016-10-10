module inheritance_1;

import std.stdio;
import std.string;

class Clock {
    override string toString() const {
        return format("%02s:%02s:%02s", hour, minute, second);
    }

    // ...
    int hour;
    int minute;
    int second;

    void adjust(int hour, int minute, int second = 0) {
        this.hour = hour;
        this.minute = minute;
        this.second = second;
    }
    this(int hour, int minute, int second) {
        this.hour = hour;
        this.minute = minute;
        this.second = second;
    }

    // ...
}

class AlarmClock : Clock {
    override string toString() const {
        return format("%s ♫%02s:%02s", super.toString(),
                      alarmHour, alarmMinute);
    }

    // ...
    int alarmHour;
    int alarmMinute;

    void adjustAlarm(int hour, int minute) {
        alarmHour = hour;
        alarmMinute = minute;
    }
    this(int hour, int minute, int second,  // for Clock's members
         int alarmHour, int alarmMinute) {  // for AlarmClock's members
        super(hour, minute, second);
        this.alarmHour = alarmHour;
        this.alarmMinute = alarmMinute;
    }

    // ...
}
void main() {
    auto deskClock = new AlarmClock(10, 15, 0, 6, 45);
    writeln(deskClock);
}
