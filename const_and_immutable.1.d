module const_and_immutable_1;

int totalLines() {
    return 42;
}

int totalColumns() {
    return 7;
}

string name() {
    return "list";
}

void main() {
    enum fileName = name() ~ ".txt";
    enum totalSquares = totalLines() * totalColumns();
}
