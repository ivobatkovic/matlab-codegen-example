#include <stdio.h>
#include"Addition.h"

int main() {
  
  double a = 3.01;
  double b = 7.3;
  printf("Evaluating Matlab Addition function\n");
  printf("Expected output: %.2f + %.2f = %.2f\n",a,b,a+b);
  printf("Received output: %.2f + %.2f = %.2f\n",a,b,Addition(a,b));
  
}