module parameter_flexibility_3;

int[] numbersForLaterUse;

void foo(int[] numbers...) {
    numbersForLaterUse = numbers;    
}

struct S {
    string[] namesForLaterUse;

    void foo(string[] names...) {
        namesForLaterUse = names;    
    }
}

void bar() {
    foo(1, 10, 100);  /* The temporary array [ 1, 10, 100 ] is
                       * not valid beyond this point. */

    auto s = S();
    s.foo("hello", "world");  /* The temporary array
                               * [ "hello", "world" ] is not
                               * valid beyond this point. */

    // ...
}

void main() {
    bar();
}
