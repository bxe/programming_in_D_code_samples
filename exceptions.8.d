module exceptions_8;

import std.stdio;
import std.random;

void throwsHalfTheTime() {
    if (uniform(0, 2) == 1) {
        throw new Exception("the error message");
    }
}

void foo() {
    writeln("the first line of foo()");

    try {
        writeln("the first line of the try block");
        throwsHalfTheTime();
        writeln("the last line of the try block");

    // ... there may be one or more catch blocks here ...

    } finally {
        writeln("the body of the finally block");
    }

    writeln("the last line of foo()");
}

void main() {
    foo();
}
