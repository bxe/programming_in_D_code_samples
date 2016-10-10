module files_2;

import std.stdio;
import std.string;

void main() {
    File file = File("student_records", "r");

    while (!file.eof()) {
        string line = chomp(file.readln());
        writeln("read line -> |", line);
    }
}
