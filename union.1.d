module union_1;

union IpAddress {
    uint value;
    ubyte[4] bytes;
}
import std.stdio;

void main() {
    auto address = IpAddress(0xc0a80102);
    writeln(address.bytes);
}
