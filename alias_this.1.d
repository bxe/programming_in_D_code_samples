module alias_this_1;

import std.stdio;

struct Fraction {
    long numerator;
    long denominator;

    double value() const @property {
        return double(numerator) / denominator;
    }

    alias value this;

    // ...
}

double calculate(double lhs, double rhs) {
    return 2 * lhs + rhs;
}

void main() {
    auto fraction = Fraction(1, 4);    // meaning 1/4
    writeln(calculate(fraction, 0.75));
}
