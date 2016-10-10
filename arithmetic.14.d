module arithmetic_14;

import std.stdio;

void main() {
    int incremented_regularly = 1;
    writeln(++incremented_regularly);      // prints 2
    writeln(incremented_regularly);        // prints 2

    int post_incremented = 1;

    // Gets incremented, but its old value is used:
    writeln(post_incremented++);           // prints 1
    writeln(post_incremented);             // prints 2
}
