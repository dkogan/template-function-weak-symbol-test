#include "inner.hh"
#include "mid.hh"

#include <stdio.h>

int main(void)
{
    printf("Calling from mid()\n");
    mid();

    printf("Calling from outer()\n");
    inner<1>();

    return 0;
}
