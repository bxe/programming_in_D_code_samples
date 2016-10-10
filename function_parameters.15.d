module function_parameters_15;

int[] globalSlice;

int[] foo(scope int[] parameter) {
    globalSlice = parameter;    // ← compilation ERROR
    return parameter;           // ← compilation ERROR
}

void main() {
    int[] slice = [ 10, 20 ];
    int[] result = foo(slice);
}
