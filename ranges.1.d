module ranges_1;

import std.stdio;
import std.algorithm;

void main() {
    int[] values = [ 1, 20, 7, 11 ];
    writeln(values.filter!(value => value > 10));
}
