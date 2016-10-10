module foreach_1;

import std.stdio;

void main() {
    auto numbers = [ 1, 0, 15, 10, 3, 5, 20, 30 ];

    size_t count = 0;
    foreach (number; numbers) {
        if ((number % 10) == 0) {
            ++count;
            write(count);

        } else {
            write(' ');
        }

        writeln(": ", number);
    }
}
