module concurrency_shared_5;

import std.stdio;
import std.concurrency;
import core.thread;

void swapper(shared(int) * first, shared(int) * second) {
    foreach (i; 0 .. 10_000) {
        int temp = *second;
        *second = *first;
        *first = temp;
    }
}

void main() {
    shared(int) i = 1;
    shared(int) j = 2;

    writefln("before: %s and %s", i, j);

    foreach (id; 0 .. 10) {
        spawn(&swapper, &i, &j);
    }

    // Wait for all threads to finish their tasks
    thread_joinAll();

    writefln("after : %s and %s", i, j);
}
