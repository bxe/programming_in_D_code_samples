module concurrency_15;

import std.concurrency;
import core.thread;

void workerFunc() {
    while (true) {
        try {
            ownerTid.send(42);

        } catch (MailboxFull exc) {
            /* Failed to send; will try again later. */
            Thread.sleep(1.msecs);
        }
    }
}

void main() {
    setMaxMailboxSize(thisTid, 1000, OnCrowding.throwException);

    spawn(&workerFunc);

    while (true) {
        receive(
            (int message) {
                Thread.sleep(1.seconds);
            });
    }
}
