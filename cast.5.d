/* NOTE: This program is expected to fail compilation. */

module cast_5;

void main() {
    double d = -1.75;

    short s = d;     // ← compilation ERROR
    int i = "42";    // ← compilation ERROR
}
