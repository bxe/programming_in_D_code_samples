module modules_4;

// Declaring that 'foo' has C linkage (e.g. it may be defined
// in a C library):
extern(C) void foo();

void main() {
    foo();  // this call would be compiled as a call to '_foo'
}
