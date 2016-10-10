/* NOTE: This program is expected to fail compilation. */

module class_1;

class ChessPiece {
    dchar shape;
    size_t value;
}

void main() {
    auto king = new ChessPiece('♔', 100);  // ← compilation ERROR
}
