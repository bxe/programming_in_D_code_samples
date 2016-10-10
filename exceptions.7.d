module exceptions_7;

import std.stdio;
import std.stdio;

void indent(in int level) {
    foreach (i; 0 .. level * 2) {
        write(' ');
    }
}

void entering(in char[] functionName, in int level) {
    indent(level);
    writeln("▶ ", functionName, "'s first line");
}

void exiting(in char[] functionName, in int level) {
    indent(level);
    writeln("◁ ", functionName, "'s last line");
}

void RENAMED_RENAMED_main() {
    entering("RENAMED_RENAMED_main", 0);
    makeOmelet();
    eatOmelet();
    exiting("RENAMED_RENAMED_main", 0);
}

void makeOmelet() {
    entering("makeOmelet", 1);
    prepareAll();
    cookEggs();
    cleanAll();
    exiting("makeOmelet", 1);
}

void eatOmelet() {
    entering("eatOmelet", 1);
    exiting("eatOmelet", 1);
}

void prepareAll() {
    entering("prepareAll", 2);
    prepareEggs();
    prepareButter();
    preparePan();
    exiting("prepareAll", 2);
}

void cookEggs() {
    entering("cookEggs", 2);
    exiting("cookEggs", 2);
}

void cleanAll() {
    entering("cleanAll", 2);
    exiting("cleanAll", 2);
}

void prepareEggs() {
    entering("prepareEggs", 3);
    exiting("prepareEggs", 3);
}

void prepareButter() {
    entering("prepareButter", 3);
    exiting("prepareButter", 3);
}

void preparePan() {
    entering("preparePan", 3);
    exiting("preparePan", 3);
}
import std.string;

// ...

void prepareEggs(int count) {
    entering("prepareEggs", 3);

    if (count < 1) {
        throw new Exception(
            format("Cannot take %s eggs from the fridge", count));
    }

    exiting("prepareEggs", 3);
}
// ...

void RENAMED_main() {
    entering("RENAMED_main", 0);
    makeOmelet(-8);
    eatOmelet();
    exiting("RENAMED_main", 0);
}

void makeOmelet(int eggCount) {
    entering("makeOmelet", 1);
    prepareAll(eggCount);
    cookEggs();
    cleanAll();
    exiting("makeOmelet", 1);
}

// ...

void prepareAll(int eggCount) {
    entering("prepareAll", 2);
    prepareEggs(eggCount);
    prepareButter();
    preparePan();
    exiting("prepareAll", 2);
}

// ...
void main() {
    entering("main", 0);

    try {
        makeOmelet(-8);
        eatOmelet();

    } catch (Exception exc) {
        write("Failed to eat omelet: ");
        writeln('"', exc.msg, '"');
        writeln("Shall eat at the neighbor's...");
    }

    exiting("main", 0);
}
