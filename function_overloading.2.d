/* NOTE: This program is expected to fail compilation. */

module function_overloading_2;

real sevenTimes(in real value) {
    return 7 * value;
}

double sevenTimes(in double value) {
    return 7 * value;
}

void main() {
    int value = 5;
    auto result = sevenTimes(value);    // ← compilation ERROR
}
