module concurrency_9;

import std.stdio;
import std.concurrency;
import core.thread;

void workerFunc() {
    Thread.sleep(3.seconds);
    ownerTid.send("hello");
}

void main() {
    spawn(&workerFunc);

    writeln("Waiting for a message");
    bool received = false;
    while (!received) {
        received = receiveTimeout(600.msecs,
                                  (string message) {
                                      writeln("received: ", message);
                                });

        if (!received) {
            writeln("... no message yet");

            /* ... other operations may be executed here ... */
        }
    }
}
