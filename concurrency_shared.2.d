/* NOTE: This program is expected to fail compilation. */

module concurrency_shared_2;

import std.concurrency;

void worker(bool * isDone) {
    while (!(*isDone)) {
        // ...
    }
}

void main() {
    bool isDone = false;
    spawn(&worker, &isDone);      // ← compilation ERROR

    // ...

    // Hoping to signal the worker to terminate:
    isDone = true;

    // ...
}
