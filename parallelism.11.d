module parallelism_11;

import std.stdio;
import std.algorithm;
import std.conv;

double quarterOf(double value) {
    return value / 4;
}

string tenTimes(double value) {
    return to!string(value * 10);
}

void main() {
    auto values = [10, 42, 100];
    auto results = map!(quarterOf, tenTimes)(values);

    writefln(" Quarters  Ten Times");

    foreach (quarterResult, tenTimesResult; results) {
        writefln("%8.2f%8s", quarterResult, tenTimesResult);
    }
}
