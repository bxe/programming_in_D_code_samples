module strings_6;

import std.stdio;

void main() {
     string s = "résumé"c;   // same as "résumé"
    wstring w = "résumé"w;
    dstring d = "résumé"d;

    writeln(s.length);
    writeln(w.length);
    writeln(d.length);
}
