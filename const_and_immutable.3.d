module const_and_immutable_3;

import std.stdio;

void main() {
    immutable      inferredType = 0;
    immutable int  explicitType = 1;
    immutable(int) wholeType    = 2;

    writeln(typeof(inferredType).stringof);
    writeln(typeof(explicitType).stringof);
    writeln(typeof(wholeType).stringof);
}
