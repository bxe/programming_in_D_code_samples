module concurrency_3;

import std.stdio;
import std.concurrency;

void printTid(string tag) {
    writefln("%s: %s", tag, thisTid);
}

void worker() {
    printTid("Worker");
}

void main() {
    spawn(&worker);
    printTid("Owner ");
}
