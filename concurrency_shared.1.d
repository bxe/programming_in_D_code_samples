module concurrency_shared_1;

import std.stdio;
import std.concurrency;
import core.thread;

int variable;

void printInfo(string message) {
    writefln("%s: %s (@%s)", message, variable, &variable);
}

void worker() {
    variable = 42;
    printInfo("Before the worker is terminated");
}

void main() {
    spawn(&worker);
    thread_joinAll();
    printInfo("After the worker is terminated");
}
