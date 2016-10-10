module do_while_1;

import std.stdio;
import std.random;

void main() {
    int number = uniform(1, 101);

    writeln("I am thinking of a number between 1 and 100.");

    int guess;

    do {
        write("What is your guess? ");

        readf(" %s", &guess);

        if (number < guess) {
            write("My number is less than that. ");

        } else if (number > guess) {
            write("My number is greater than that. ");
        }

    } while (guess != number);

    writeln("Correct!");
}
