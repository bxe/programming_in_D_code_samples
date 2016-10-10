module literals_solution_2;

import std.stdio;
import core.thread;

void main() {
    for (int number = 0; ; ++number) {
        write("\rNumber: ", number);
        stdout.flush();
        Thread.sleep(10.msecs);
    }
}
