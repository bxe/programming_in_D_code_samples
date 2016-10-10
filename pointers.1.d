module pointers_1;

import std.stdio;

void main() {
    int[] numbers = [ 1, 11, 111 ];

    foreach (number; numbers) {
        number = 0;     // ← the copy changes, not the element
    }

    writeln("After the loop: ", numbers);
}
