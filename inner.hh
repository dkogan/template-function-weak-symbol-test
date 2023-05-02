#pragma once

#include <stdio.h>

template <int N>
void inner(void)
{
    printf("inner N=%d what=%s\n", N, WHAT);
}
