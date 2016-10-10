module lifetimes_1;

void main() {
    int main_in;      /* The value of main_in is copied to the
                       * parameter. */

    int main_ref;     /* main_ref is passed to the function as
                       * itself. */

    int main_out;     /* main_out is passed to the function as
                       * itself. Its value is set to int.init
                       * upon entering the function. */

    foo(main_in, main_ref, main_out, aCalculation());
}

void foo(
    in int p_in,       /* The lifetime of p_in starts upon
                        * entering the function and ends upon
                        * exiting the function. */

    ref int p_ref,     /* p_ref is an alias of main_ref. */

    out int p_out,     /* p_out is an alias of main_out. Its
                        * value is set to int.init upon
                        * entering the function. */

    lazy int p_lazy) { /* The lifetime of p_lazy starts when
                        * it is used and ends when its use
                        * ends. Its value is calculated by
                        * calling aCalculation() every time
                        * p_lazy is used in the function. */
    // ...
}

int aCalculation() {
    int result;
    // ...
    return result;
}
