module const_and_immutable_4;

import std.stdio;

void main() {
    int[] slice = [ 10, 20, 30, 40 ];  // 1
    halve(slice);
    writeln(slice);
}

void halve(int[] numbers) {            // 2
    foreach (ref number; numbers) {
        number /= 2;
    }
}
