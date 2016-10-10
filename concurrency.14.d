module concurrency_14;

/* WARNING: Your system may become unresponsive when this
 *          program is running. */
import std.concurrency;
import core.thread;

void workerFunc() {
    while (true) {
        ownerTid.send(42);    // ← Produces messages continuously
    }
}

void main() {
    spawn(&workerFunc);

    while (true) {
        receive(
            (int message) {
                // Spends time for each message
                Thread.sleep(1.seconds);
            });
    }
}
