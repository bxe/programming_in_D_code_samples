module arrays_4;

import std.stdio;
import std.algorithm;

void main() {
    int[] array = [ 4, 3, 1, 5, 2 ];
    sort(array);
    writeln(array);
}
