module concurrency_4;

import std.concurrency;

void workerFunc() {
    ownerTid.send("hello");    // Sending string
}

void main() {
    spawn(&workerFunc);

    auto message = receiveOnly!double();    // Expecting double
}
