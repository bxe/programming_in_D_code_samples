module concurrency_shared_8;

import std.stdio;
import std.concurrency;
import core.thread;

static this() {
    writeln("executing static this()");
}

void worker() {
}

void main() {
    spawn(&worker);

    thread_joinAll();
}
