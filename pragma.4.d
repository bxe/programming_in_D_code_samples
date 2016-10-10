module pragma_4;

/* If a C library had a function named 'body', it could only
 * be called from D through a name like 'c_body', mangled as
 * the actual function name: */
pragma(mangle, "body")
extern(C) string c_body(string);

void main() {
    /* D code calls the function as c_body() but the linker
     * would find it by its correct C library name 'body': */
    auto s = c_body("hello");
}
