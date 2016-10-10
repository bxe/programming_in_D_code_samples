module pragma_2;

import std.stdio;
import std.net.curl;

pragma(lib, "curl");

void main() {
    // Get this chapter
    writeln(get("ddili.org/ders/d.en/pragma.html"));
}
