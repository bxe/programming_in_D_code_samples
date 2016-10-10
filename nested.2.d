/* NOTE: This program is expected to fail compilation. */

module nested_2;

void main() {
    auto a = NestedStruct();              // ← compilation ERROR
    auto b = outerFunc.NestedStruct();    // ← compilation ERROR
}
