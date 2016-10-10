module pointers_8;

import std.stdio;
import std.random;

void main() {
    size_t headsCount = 0;
    size_t tailsCount = 0;

    foreach (i; 0 .. 100) {
        size_t * theCounter = (uniform(0, 2) == 1)
                               ? &headsCount
                               : &tailsCount;
        ++(*theCounter);
    }

    writefln("heads: %s  tails: %s", headsCount, tailsCount);
}
