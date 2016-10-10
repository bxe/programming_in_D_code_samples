module parallelism_9;

import std.stdio;
import std.algorithm;

void main() {
    writeln(reduce!((a, b) => a + b * b)(0, [5, 10]));
}
