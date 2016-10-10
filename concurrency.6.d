module concurrency_6;

void workerFunc() {
    bool isDone = false;

    while (!isDone) {
        void intHandler(int message) {
            writeln("handling int message: ", message);

            if (message == -1) {
                writeln("exiting");
                isDone = true;
            }
        }

        void stringHandler(string message) {
            writeln("handling string message: ", message);
        }

        receive(&intHandler, &stringHandler);
    }
}
import std.stdio;
import std.concurrency;

// ...

void main() {
    auto worker = spawn(&workerFunc);

    worker.send(10);
    worker.send(42);
    worker.send("hello");
    worker.send(-1);        // ← to terminate the worker
}
