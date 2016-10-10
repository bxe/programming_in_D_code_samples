module ranges_9;

import std.array;
import std.stdio;

struct Reversed {
    int[] range;

    this(int[] range) {
        this.range = range;
    }

    @property bool empty() const {
        return range.empty;
    }

    @property int front() const {
        return range.back;  // ← reverse
    }

    @property int back() const {
        return range.front; // ← reverse
    }

    void popFront() {
        range.popBack();    // ← reverse
    }

    void popBack() {
        range.popFront();   // ← reverse
    }
}

void main() {
    writeln(Reversed([ 1, 2, 3]));
}
