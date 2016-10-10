module foreach_2;

import std.stdio;

void main() {
    double[] numbers = [ 1.2, 3.4, 5.6 ];

    writefln("Before: %s", numbers);

    foreach (number; numbers) {
        number *= 2;
    }

    writefln("After : %s", numbers);
}
