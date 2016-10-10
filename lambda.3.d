module lambda_3;

int[] filterAndConvert(const int[] numbers) {
    int[] result;

    foreach (e; numbers) {
        if (e > 0) {                       // filtering,
            immutable newNumber = e * 10;  // and conversion
            result ~= newNumber;
        }
    }

    return result;
}
import std.stdio;
import std.random;

void main() {
    int[] numbers;

    // Random numbers
    foreach (i; 0 .. 10) {
        numbers ~= uniform(0, 10) - 5;
    }

    writeln("input : ", numbers);
    writeln("output: ", filterAndConvert(numbers));
}
