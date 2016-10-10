module mixin_4;

import std.stdio;

void main() {
    mixin (`writeln("hello world");`);
}
