module uda_1;

struct Encrypted {
}

enum Color { black, blue, red }

struct Colored {
    Color color;
}

void main() {
    @Encrypted           int a;    // type name
    @Encrypted()         int b;    // object
    @Colored(Color.blue) int c;    // object
    @(42)                int d;    // literal (discouraged)
}
