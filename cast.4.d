module cast_4;

char[] parenthesized(const char[] text) {
    return "{" ~ text ~ "}";
}

void main() {
    char[] greeting;
    greeting ~= "hello world";
    parenthesized(greeting);
}
