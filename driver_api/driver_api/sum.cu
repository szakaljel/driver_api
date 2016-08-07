
// Vector addition (device code)

#include "sum.h"

extern "C" __global__ void Sum(int *a, int *b, int *c)
{
    int tid = blockIdx.x;
    if (tid < N)
        c[tid] = a[tid] + b[tid];
}