module strings_8;

import std.stdio;
import std.string;

void main() {
    write("      Enter a string: ");
    string s1 = chomp(readln());

    write("Enter another string: ");
    string s2 = chomp(readln());

    if (s1 == s2) {
        writeln("They are the same!");

    } else {
        string former;
        string latter;

        if (s1 < s2) {
            former = s1;
            latter = s2;

        } else {
            former = s2;
            latter = s1;
        }

        writeln("'", former, "' comes before '", latter, "'.");
    }
}
