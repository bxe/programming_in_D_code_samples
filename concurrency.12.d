module concurrency_12;

import std.stdio;
import std.concurrency;

void main() {
    spawn(&intermediaryFunc);
}

void intermediaryFunc() {
    auto worker = spawn(&workerFunc);
    worker.send(1);
    worker.send(2);
}  // ← Terminates after sending two messages

void workerFunc() {
    while (true) {
        auto m = receiveOnly!int(); // ← An exception is
                                    //   thrown if the owner
                                    //   has terminated.
        writeln("Message: ", m);
    }
}
