#include <stdio.h>
#include "myproject.h"

void hello(void) {
    puts("Hello FreeBSD gcc14!");
}

int main(void) {
    hello();
    return 0;
}