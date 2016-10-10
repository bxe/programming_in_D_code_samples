module concurrency_shared_4;

import std.stdio;
import std.concurrency;
import core.thread;

void worker(immutable(int) * data) {
    writeln("data: ", *data);
}

void main() {
    immutable(int) i = 42;
    spawn(&worker, &i);         // ← compiles

    thread_joinAll();
}
