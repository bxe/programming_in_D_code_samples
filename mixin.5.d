module mixin_5;

import std.stdio;
mixin (
`import std.stdio; void main() { writeln("hello world"); }`
);
