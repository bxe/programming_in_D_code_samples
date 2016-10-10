module member_functions_solution_1;

import std.stdio;
import std.string;

struct Duration {
    int minute;
}

struct TimeOfDay {
    int hour;
    int minute;

    string toString() {
        return format("%02s:%02s", hour, minute);
    }

    void increment(in Duration duration) {
        minute += duration.minute;

        hour += minute / 60;
        minute %= 60;
        hour %= 24;
    }
}

struct Meeting {
    string    topic;
    int       attendanceCount;
    TimeOfDay start;
    TimeOfDay end;

    string toString() {
        return format("%s-%s \"%s\" meeting with %s attendees",
                      start, end, topic, attendanceCount);
    }
}

struct Meal {
    TimeOfDay time;
    string    address;

    string toString() {
        TimeOfDay end = time;
        end.increment(Duration(90));

        return format("%s-%s Meal, Address: %s",
                      time, end, address);
    }
}

struct DailyPlan {
    Meeting amMeeting;
    Meal    lunch;
    Meeting pmMeeting;

    string toString() {
        return format("%s\n%s\n%s",
                      amMeeting,
                      lunch,
                      pmMeeting);
    }
}

void main() {
    auto bikeRideMeeting = Meeting("Bike Ride", 4,
                                   TimeOfDay(10, 30),
                                   TimeOfDay(11, 45));

    auto lunch = Meal(TimeOfDay(12, 30), "İstanbul");

    auto budgetMeeting = Meeting("Budget", 8,
                                 TimeOfDay(15, 30),
                                 TimeOfDay(17, 30));

    auto todaysPlan = DailyPlan(bikeRideMeeting,
                                lunch,
                                budgetMeeting);

    writeln(todaysPlan);
    writeln();
}
