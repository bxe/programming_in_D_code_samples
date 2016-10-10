/* NOTE: This program is expected to fail compilation. */

module cast_7;

void calculate(immutable int[] coordinates) {
    // ...
}

void main() {
    int[] numbers;
    numbers ~= 10;
    // ... various other modifications ...
    numbers[0] = 42;

    calculate(numbers);    // ← compilation ERROR
}
