module functions_more_7;

import std.stdio;
import std.string;
import std.range;

string menuLines(string[] choices) {
    string result;

    foreach (i, choice; choices) {
        result ~= format(" %s. %s\n", i + 1, choice);
    }

    return result;
}

string menu(string title,
            string[] choices,
            size_t width) {
    return format("%s\n%s\n%s",
                  title.center(width),
                  '='.repeat(width),    // horizontal line
                  menuLines(choices));
}

void main() {
    enum drinks =
        menu("Drinks",
             [ "Coffee", "Tea", "Hot chocolate" ], 20);

    writeln(drinks);
}
