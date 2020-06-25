#ifndef A_H
#define A_H

#ifdef DEBUG
#include "assert.h"
#define a(...) assert(__VA_ARGS__)
#else
#define a(...)
#endif

#endif 