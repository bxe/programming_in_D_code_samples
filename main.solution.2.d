module main_solution_2;

import std.stdio;
import std.process;

void main() {
    write("Please enter the command line to execute: ");
    string commandLine = readln();

    writeln("The output: ", executeShell(commandLine));
}
