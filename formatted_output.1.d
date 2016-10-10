module formatted_output_1;

import std.stdio;
import std.string;

void main() {
    write("What is your name? ");
    auto name = chomp(readln());

    auto result = format("Hello %s!", name);
}
