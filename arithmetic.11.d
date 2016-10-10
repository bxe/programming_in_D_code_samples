module arithmetic_11;

import std.stdio;

void main() {
    int number = 10;

    number += 20;  // same as number = number + 20; now 30
    number -= 5;   // same as number = number - 5;  now 25
    number *= 2;   // same as number = number * 2;  now 50
    number /= 3;   // same as number = number / 3;  now 16
    number %= 7;   // same as number = number % 7;  now  2
    number ^^= 6;  // same as number = number ^^ 6; now 64

    writeln(number);
}
