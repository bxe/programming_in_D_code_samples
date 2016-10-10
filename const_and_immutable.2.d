module const_and_immutable_2;

import std.stdio;
import std.random;

int readInt(string message) {
    int result;
    write(message, "? ");
    readf(" %s", &result);
    return result;
}

void main() {
    enum min = 1;
    enum max = 10;

    immutable number = uniform(min, max + 1);

    writefln("I am thinking of a number between %s and %s.",
             min, max);

    auto isCorrect = false;
    while (!isCorrect) {
        immutable guess = readInt("What is your guess");
        isCorrect = (guess == number);
    }

    writeln("Correct!");
}
