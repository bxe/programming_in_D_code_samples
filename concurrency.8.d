module concurrency_8;

import std.stdio;
import std.concurrency;

void workerFunc() {
    receive(
        (int message) { /* ... */ },

        (double message) { /* ... */ },

        (Variant message) {
            writeln("Unexpected message: ", message);
        });
}

struct SpecialMessage {
    // ...
}

void main() {
    auto worker = spawn(&workerFunc);
    worker.send(SpecialMessage());
}
