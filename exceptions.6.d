module exceptions_6;

import std.stdio;

int readDieFromFile() {
    auto file = File("the_file_that_contains_the_value", "r");

    int die;
    file.readf(" %s", &die);

    return die;
}

int tryReadingFromFile() {
    int die;

    try {
        die = readDieFromFile();

    } catch (std.exception.ErrnoException exc) {
        writeln("(Could not read from file; assuming 1)");
        die = 1;
    }

    return die;
}

void main() {
    const int die = tryReadingFromFile();

    writeln("Die value: ", die);
}
