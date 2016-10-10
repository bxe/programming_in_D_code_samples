module concurrency_16;

import std.stdio;
import std.concurrency;
import core.thread;

struct Exit {
}

void main() {
    // A thread whose partner is named "second"
    auto first = spawn(&player, "second");
    register("first", first);
    scope(exit) unregister("first");

    // A thread whose partner is named "first"
    auto second = spawn(&player, "first");
    register("second", second);
    scope(exit) unregister("second");

    Thread.sleep(2.seconds);

    prioritySend(first, Exit());
    prioritySend(second, Exit());

    // For the unregister() calls to succeed, main() must wait
    // until the workers terminate.
    thread_joinAll();
}

void player(string nameOfPartner) {
    Tid partner;

    while (partner == Tid.init) {
        Thread.sleep(1.msecs);
        partner = locate(nameOfPartner);
    }

    bool isDone = false;

    while (!isDone) {
        partner.send("hello " ~ nameOfPartner);
        receive(
            (string message) {
                writeln("Message: ", message);
                Thread.sleep(500.msecs);
            },

            (Exit message) {
                writefln("%s, I am exiting.", nameOfPartner);
                isDone = true;
            });
    }
}
