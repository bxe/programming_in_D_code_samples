module cond_comp_4;

import std.stdio;

debug(everything) {
    debug = binarySearch;
    debug = stackContainer;
    version = testRelease;
    version = schoolRelease;
}

void main() {
    debug(binarySearch) writeln("binarySearch is active");
    debug(stackContainer) writeln("stackContainer is active");

    version(testRelease) writeln("testRelease is active");
    version(schoolRelease) writeln("schoolRelease is active");
}
