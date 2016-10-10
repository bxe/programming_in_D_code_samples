module templates_more_3;

template segmentCount(ActualT, SegmentT) {
    enum segmentCount = ((ActualT.sizeof + (SegmentT.sizeof - 1))
                         / SegmentT.sizeof);
}
union SegmentedValue(ActualT, SegmentT) {
    ActualT value;
    SegmentT[segmentCount!(ActualT, SegmentT)] segments;
}
import std.stdio;

void main() {
    auto address = SegmentedValue!(uint, ubyte)(0xc0a80102);

    foreach (octet; address.segments) {
        write(octet, ' ');
    }
}
