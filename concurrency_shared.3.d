module concurrency_shared_3;

import std.concurrency;

void worker(shared(bool) * isDone) {
    while (*isDone) {
        // ...
    }
}

void main() {
    shared(bool) isDone = false;
    spawn(&worker, &isDone);

    // ...

    // Signalling the worker to terminate:
    isDone = true;

    // ...
}
