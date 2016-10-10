/* NOTE: This program is expected to fail compilation. */

module name_space_1;

void main() {
    int outer;

    if (aCondition) {  // ← curly bracket starts a new scope
        int inner = 1;
        outer = 2;     // ← 'outer' is available here

    } // ← 'inner' is not available beyond this point

    inner = 3;  // ← compilation ERROR
                //   'inner' is not available in the outer scope
}
