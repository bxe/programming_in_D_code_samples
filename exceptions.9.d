module exceptions_9;

import std.stdio;

void foo() {
    try {
        throw new Exception("Exception thrown in foo");

    } finally {
        throw new Exception(
            "Exception thrown in foo's finally block");
    }
}

void bar() {
    try {
        foo();

    } finally {
        throw new Exception(
            "Exception thrown in bar's finally block");
    }
}

void main() {
    try {
        bar();

    } catch (Exception caughtException) {

        for (Throwable exc = caughtException;
             exc;    // ← Meaning: as long as exc is not 'null'
             exc = exc.next) {

            writefln("error message: %s", exc.msg);
            writefln("source file  : %s", exc.file);
            writefln("source line  : %s", exc.line);
            writeln();
        }
    }
}
