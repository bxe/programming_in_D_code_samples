module concurrency_13;

import std.stdio;
import std.concurrency;

void main() {
    auto worker = spawnLinked(&workerFunc);

    while (true) {
        auto m = receiveOnly!int(); // ← An exception is
                                    //   thrown if the worker
                                    //   has terminated.
        writeln("Message: ", m);
    }
}

void workerFunc() {
    ownerTid.send(10);
    ownerTid.send(20);
}  // ← Terminates after sending two messages
