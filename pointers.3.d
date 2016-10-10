module pointers_3;

import std.stdio;

class Pen {
    double ink;

    this() {
        ink = 15;
    }

    void use(double amount) {
        ink -= amount;
    }
}

void main() {
    auto pen = new Pen;
    auto otherPen = pen;  // ← Now both variables provide
                          //   access to the same object

    writefln("Before: %s %s", pen.ink, otherPen.ink);

    pen.use(1);          // ← the same object is used
    otherPen.use(2);     // ← the same object is used

    writefln("After : %s %s", pen.ink, otherPen.ink);
}
