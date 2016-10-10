module ranges_8;

import std.stdio;
struct FibonacciSeries {
// ...

    @property FibonacciSeries save() const {
        return this;
    }
    int current = 0;
    int next = 1;

    enum empty = false;   // ← infinite range

    @property int front() const {
        return current;
    }

    void popFront() {
        const nextNext = current + next;
        current = next;
        next = nextNext;
    }
}
import std.range;

// ...

void report(T)(const dchar[] title, const ref T range) {
    writefln("%40s: %s", title, range.take(5));
}

void main() {
    auto range = FibonacciSeries();
    report("Original range", range);

    range.popFrontN(2);
    report("After removing two elements", range);

    auto theCopy = range.save;
    report("The copy", theCopy);

    range.popFrontN(3);
    report("After removing three more elements", range);
    report("The copy", theCopy);
}
