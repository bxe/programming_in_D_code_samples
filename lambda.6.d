module lambda_6;

import std.stdio;

struct Location {
    long x;
    long y;

    void moveHorizontally(long step) { x += step; }
    void moveVertically(long step)   { y += step; }
}

void main() {
    auto location = Location();
    writeln(typeof(&location.moveHorizontally).stringof);
}
