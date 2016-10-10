module aa_1;

import std.stdio;
import std.string;

void main() {
    string[string] colors = [ "black" : "siyah",
                              "white" : "beyaz",
                              "red"   : "kırmızı",
                              "green" : "yeşil",
                              "blue"  : "mavi"
                            ];

    writefln("I know the Turkish names of these %s colors: %s",
             colors.length, colors.keys);

    write("Please ask me one: ");
    string inEnglish = chomp(readln());

    if (inEnglish in colors) {
        writefln("\"%s\" is \"%s\" in Turkish.",
                 inEnglish, colors[inEnglish]);

    } else {
        writeln("I don't know that one.");
    }
}
