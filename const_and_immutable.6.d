/* NOTE: This program is expected to fail compilation. */

module const_and_immutable_6;

void func(immutable int[] slice) {
    // ...
}

void main() {
    immutable int[] immSlice = [ 1, 2 ];
              int[]    slice = [ 8, 9 ];

    func(immSlice);      // compiles
    func(slice);         // ← compilation ERROR
}
