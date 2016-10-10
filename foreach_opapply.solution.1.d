module foreach_opapply_solution_1;

struct NumberRange {
    int begin;
    int end;
    int stepSize;

    int opApply(int delegate(ref int) dg) const {
        int result;

        for (int number = begin; number != end; number += stepSize) {
            result = dg(number);

            if (result) {
                break;
            }
        }

        return result;
    }
}

import std.stdio;

void main() {
    foreach (element; NumberRange(0, 10, 2)) {
        write(element, ' ');
    }
}
