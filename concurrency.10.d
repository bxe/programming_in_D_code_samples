module concurrency_10;

void calculate() {
    while (true) {
        auto message = receiveOnly!string();
        ownerTid.send(to!double(message) + 0.5);
    }
}
import std.stdio;
import std.concurrency;
import std.conv;

// ...

void main() {
    Tid calculator = spawn(&calculate);

    calculator.send("1.2");
    calculator.send("hello");  // ← incorrect input
    calculator.send("3.4");

    foreach (i; 0 .. 3) {
        auto message = receiveOnly!double();
        writefln("result %s: %s", i, message);
    }
}
