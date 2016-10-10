module files_1;

import std.stdio;

void main() {
    File file = File("student_records", "w");

    file.writeln("Name  : ", "Zafer");
    file.writeln("Number: ", 123);
    file.writeln("Class : ", "1A");
}
