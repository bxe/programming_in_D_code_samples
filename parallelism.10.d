module parallelism_10;

import std.stdio;
import std.algorithm;
import core.thread;

int aCalculation(int result, int element) {
    writefln("started  - element: %s, result: %s",
             element, result);

    Thread.sleep(1.seconds);
    result += element;

    writefln("finished - element: %s, result: %s",
             element, result);

    return result;
}

void main() {
    writeln("Result: ", reduce!aCalculation(0, [1, 2, 3, 4]));
}
