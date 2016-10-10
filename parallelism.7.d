module parallelism_7;

import std.stdio;
import core.thread;

struct Range {
    int limit;
    int i;

    bool empty() const @property {
        return i >= limit;
    }

    int front() const @property {
        return i;
    }

    void popFront() {
        writefln("Producing the element after %s", i);
        Thread.sleep(500.msecs);
        ++i;
    }
}

void main() {
    auto range = Range(10);

    foreach (element; range) {
        writefln("Using element %s", element);
        Thread.sleep(500.msecs);
    }
}
