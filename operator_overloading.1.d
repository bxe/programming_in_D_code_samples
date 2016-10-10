module operator_overloading_1;

struct Duration {
    int minute;
}

struct TimeOfDay {
    int hour;
    int minute;

    void increment(in Duration duration) {
        minute += duration.minute;

        hour += minute / 60;
        minute %= 60;
        hour %= 24;
    }
}

void main() {
    auto lunchTime = TimeOfDay(12, 0);
    lunchTime.increment(Duration(10));
}
