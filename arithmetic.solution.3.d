module arithmetic_solution_3;

import std.stdio;

void main() {
    while (true) {
        write("0: Exit, 1: Add, 2: Subtract, 3: Multiply,",
              " 4: Divide - Please enter the operation: ");

        int operation;
        readf(" %s", &operation);

        // Let's first validate the operation
        if ((operation < 0) || (operation > 4)) {
            writeln("I don't know this operation");
            continue;
        }

        if (operation == 0){
            writeln("Goodbye!");
            break;
        }

        // If we are here, we know that we are dealing with
        // one of the four operations. Now is the time to read
        // two integers from the user:

        int first;
        int second;

        write(" First number: ");
        readf(" %s", &first);

        write("Second number: ");
        readf(" %s", &second);

        int result;

        if (operation == 1) {
            result = first + second;

        } else if (operation == 2) {
            result = first - second;

        } else if (operation == 3) {
            result = first * second;

        } else if (operation == 4) {
            result = first / second;

        }  else {
            writeln(
                "There is an error! ",
                "This condition should have never occurred.");
            break;
        }

        writeln("       Result: ", result);
    }
}
