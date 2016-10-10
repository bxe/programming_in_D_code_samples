module value_vs_reference_3;

void main() {
    int number = 8;

    halve(number);      // The actual value changes
    assert(number == 4);
}

void halve(ref int dividend) {
    dividend /= 2;
}
