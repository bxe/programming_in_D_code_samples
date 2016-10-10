/* NOTE: This program is expected to fail compilation. */

module parallelism_4;

import std.parallelism;

double foo(int i) {
    return i * 1.5;
}

double bar(int i) {
    return i * 2.5;
}

void main() {
    auto tasks = [ task!foo(1),
                   task!bar(2) ];    // ← compilation ERROR
}
