module lambda_9;

import std.stdio;

void foo(double delegate()[] args...) {
    foreach (arg; args) {
        writeln(arg());     // Calling each delegate
    }
}

void main() {
    foo(1.5, () => 2.5);    // 'double' passed as delegate
}
