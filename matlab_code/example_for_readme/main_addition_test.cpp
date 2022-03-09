#include <stdio.h>

template<typename T>
constexpr T add(const T a, const T b){
    return a + b;
}

int main() {
    double a = 3.01;
    double b = 7.3;
    printf("Evaluating cpp add function\n");
    printf("Expected output: %.2f + %.2f = %.2f\n", a, b, a + b);
    printf("Received output: %.2f + %.2f = %.2f\n", a, b, add(a,b));
    return 0;
}
