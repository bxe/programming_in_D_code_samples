module templates_more_9;

// The general definition
int sum(int last)() {
    return last + sum!(last - 1)();
}

// The special definition for zero
int sum(int last : 0)() {
    return 0;
}
import std.stdio;

void main() {
    writeln(sum!4());
}
